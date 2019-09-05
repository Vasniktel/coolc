#!/usr/bin/env python

import glob

for name in glob.glob('grading/*.cl.out'):
  with open(name, 'r+') as file:
    text = file.read().replace('/usr/class/cs143/cool', '..')
    file.seek(0)
    file.write(text)
    file.truncate()
