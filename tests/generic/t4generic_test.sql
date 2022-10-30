{% test t4generic_test(model,column_name,value) %}
select
    *
from {{model}}
where
    {{column_name}}={{value}}

{% endtest%}
