#! /bin/bash
echo "" > /tmp/double-check.sh
{% for originname in allcomments.stdout_lines %}
test -f "$( echo '{{ originname }}' | sed 's/\/.comments//g' | sed 's/\.xml//g' )" \
    || echo "ls $( echo '{{ originname }}' | sed 's/\/.comments//g' | sed 's/\.xml//g' ) " >> /tmp/double-check.sh
{% endfor %}
echo "" >> /tmp/double-check.sh
