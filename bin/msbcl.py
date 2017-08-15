#!/usr/bin/env python
# coding: utf-8

import argparse
import os

if __name__ == '__main__':
  parser = argparse.ArgumentParser(description='For SBCL')
  parser.add_argument('-s', '--script', help='script file')
  parser.add_argument('-f', '--file', help='program file')
  
  args = parser.parse_args()
  script = args.script
  file = args.file

  if not file:
    print "You must input a program file."
    #quit()
    file = "window.lisp"

  if not script:
    script = '__driver.lisp'
    _tmp = u"""
(load \"%s\" :external-format :utf-8)
(main) 
    """ % (file)
    os.system("echo '%s' > %s" % (_tmp, script))
    #os.system('cat %s' % (script))
    #quit()
  else:
    # オリジナルのスクリプトファイルをコピー
    orig_script=sciprt
    script="__driver.lisp"
    os.system('cp %s %s' % (orig_script, script))
  os.system('sbcl --core ~/my/etc/main.core --script %s' % (script))
  os.system('rm %s' % (script))
  
