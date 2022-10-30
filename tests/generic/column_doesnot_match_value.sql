{% test column_does_match_value(model,column_name,value) %}
select
    *
from {{model}}
where
    {{column_name}}='{{value}}'

{% endtest%}