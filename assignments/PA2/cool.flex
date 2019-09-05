/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
	if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
		YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;

/*
 *  Add Your own definitions here
 */

int report_error(char* msg);


%}

/*
 * Define names for regular expressions here.
 */

%option stack
%option noyywrap
%s STRING COMMENT BROKENSTRING LINE_COMMENT

OP              [.@~*+\-<=/:;,(){}]
DARROW          "=>"
LE              "<="
ASSIGN          "<-"
INTEGER         [0-9]+
SPACE           [\t\r\v\f\ ]+

%%

 /*
  *  Nested comments
  */
<INITIAL,COMMENT>"(*" yy_push_state(COMMENT);
<COMMENT><<EOF>> {
    BEGIN INITIAL;
    return report_error("EOF in comment");
}

<COMMENT>.    ;
<COMMENT>"*)" yy_pop_state();
<INITIAL>"*)" return report_error("Unmatched *)");

<INITIAL>--           BEGIN LINE_COMMENT;
<LINE_COMMENT><<EOF>> BEGIN INITIAL;
<LINE_COMMENT>.       ;
<LINE_COMMENT>\n {
    BEGIN INITIAL;
    curr_lineno++;
}

 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */
<INITIAL>(?i:class)    return CLASS;
<INITIAL>(?i:else)     return ELSE;
<INITIAL>(?i:fi)       return FI;
<INITIAL>(?i:if)       return IF;
<INITIAL>(?i:in)       return IN;
<INITIAL>(?i:inherits) return INHERITS;
<INITIAL>(?i:let)      return LET;
<INITIAL>(?i:loop)     return LOOP;
<INITIAL>(?i:pool)     return POOL;
<INITIAL>(?i:then)     return THEN;
<INITIAL>(?i:while)    return WHILE;
<INITIAL>(?i:case)     return CASE;
<INITIAL>(?i:esac)     return ESAC;
<INITIAL>(?i:of)       return OF;
<INITIAL>(?i:new)      return NEW;
<INITIAL>(?i:isvoid)   return ISVOID;
<INITIAL>(?i:not)      return NOT;
<INITIAL>t(?i:rue) {
    cool_yylval.boolean = true;
    return BOOL_CONST;
}

<INITIAL>f(?i:alse) {
    cool_yylval.boolean = false;
    return BOOL_CONST;
}

<INITIAL>[A-Z][A-Za-z0-9_]* {
    cool_yylval.symbol = idtable.add_string(yytext);
    return TYPEID;
}

<INITIAL>[a-z][A-Za-z0-9_]* {
    cool_yylval.symbol = idtable.add_string(yytext);
    return OBJECTID;
}


 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for 
  *  \n \t \b \f, the result is c.
  *
  */

<INITIAL>\" {
    string_buf_ptr = string_buf;
    BEGIN STRING;
}

<STRING>\" {
    *string_buf_ptr = '\0';
    BEGIN INITIAL;
    cool_yylval.symbol = stringtable.add_string(string_buf);
    return STR_CONST;
}

<STRING><<EOF>> {
    BEGIN BROKENSTRING;
    return report_error("EOF in string constant");
}

<STRING>\\?\0 {
    BEGIN BROKENSTRING;
    return report_error("String contains null character");
}

<STRING>\\(.|\n) {
    if (string_buf_ptr - string_buf == MAX_STR_CONST - 1) {
        BEGIN BROKENSTRING;
        return report_error("String constant too long");
    }

    char c = yytext[yyleng - 1];
    switch (c) {
        case 'n':
            *string_buf_ptr++ = '\n';
            break;
        case 't':
            *string_buf_ptr++ = '\t';
            break;
        case 'b':
            *string_buf_ptr++ = '\b';
            break;
        case 'f':
            *string_buf_ptr++ = '\f';
            break;
        default:
            *string_buf_ptr++ = c;
    }
}

<BROKENSTRING>\\. ;
<BROKENSTRING>\\\n curr_lineno++;
<BROKENSTRING><<EOF>> |
<BROKENSTRING>[\"\n]  {
    if (yytext[yyleng - 1] == '\n')
        curr_lineno++;
    BEGIN INITIAL;
}

<BROKENSTRING>. ;

<STRING>\n {
    curr_lineno++;
    BEGIN INITIAL;
    return report_error("Unterminated string constant");
}

<STRING>. {
    if (string_buf_ptr - string_buf == MAX_STR_CONST - 1) {
        BEGIN BROKENSTRING;
        return report_error("String constant too long");
    }

    *string_buf_ptr++ = *yytext;
}

\n                 curr_lineno++;
<INITIAL>{SPACE}   ;
<INITIAL>{INTEGER} {
    cool_yylval.symbol = inttable.add_string(yytext);
    return INT_CONST;
}


 /*
  *  The multiple-character operators.
  */

<INITIAL>{DARROW} return DARROW;
<INITIAL>{LE}     return LE;
<INITIAL>{ASSIGN} return ASSIGN;
<INITIAL>{OP}     return *yytext;

. return report_error(yytext);

%%

int report_error(char* msg) {
    cool_yylval.error_msg = msg;
    return ERROR;
}
