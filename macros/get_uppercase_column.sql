{% macro get_uppercase_column(column_name) %}
    upper({{ column_name }})
{% endmacro %}