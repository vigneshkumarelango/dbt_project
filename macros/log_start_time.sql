-- macros/log_start_time.sql

{% macro log_start_time() %}
    {% set model_name = model.name %}
    {% set run_id = invocation_id %}

    insert into AIRBNB.RAW.QUERY_AUDIT_LOG (
        model_name, run_id, status, start_time
    )
    values (
        '{{ model_name }}',
        '{{ run_id }}',
        'started',
        current_timestamp()
    );
{% endmacro %}
