#! /bin/bash
find {{ basedir }} -name '*.xml' -print0 \
  | xargs -0 cat \
  | grep category \
  | sort \
  | uniq \
  | sed 's/.*\<category\ value\=\"//g' \
  | sed 's?\"/>??g'
