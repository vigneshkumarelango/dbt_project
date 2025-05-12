-- macros/log_end_time.sql
{% macro log_end_time() %}
    {% set model_name = model.name %}
    {% set run_id = invocation_id %}

    update AIRBNB.RAW.QUERY_AUDIT_LOG
    set 
        end_time = current_timestamp(),
        duration_seconds = datediff('second', start_time, current_timestamp()),
        status = 'completed'
    where 
        model_name = '{{ model_name }}'
        and run_id = '{{ run_id }}';
{% endmacro %}
