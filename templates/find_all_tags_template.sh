#! /bin/bash
find {{ basedir }} -name '*.xml'  \
  | grep '\.comments\/' \
  | sed 's? ?\\ ?g' \
  |  xargs cat \
  | grep category \
  | sed 's/.*\<category\ value\=\"//g' \
  | sed 's?\"/>??g' \
  | sort \
  | uniq

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
