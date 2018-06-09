#! /bin/bash
find {{ basedir }} -name '*.xml' -print0 \
  | xargs -0 cat \
  | grep category \
  | sort \
  | uniq \
  | sed 's/.*\<category\ value\=\"//g' \
  | sed 's?\"/>??g' 

# as yaml fortm
# find {{ basedir }} -name '*.xml'  \
#   | grep '\.comments\/' \
#   | sed 's? ?\\ ?g' \
#   |  xargs cat \
#   | grep category \
#   | sed s/.*\<category\ value\=/\ \ \ \-\ /g \
#   | sed s?/\>??g \
#   | sort \
#   | uniq
