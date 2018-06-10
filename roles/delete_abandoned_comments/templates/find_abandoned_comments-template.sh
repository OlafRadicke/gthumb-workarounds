#! /bin/bash

{% for originname in allcomments.stdout_lines %}
test -f "$( echo '{{ originname }}' | sed 's/\/.comments//g' | sed 's/\.xml//g' )" \
    || echo "{{ originname }}"
{% endfor %}
