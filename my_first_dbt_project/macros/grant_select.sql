{% macro grant_select(schema=target.schema, role=target.role)%}

    {% set name %}

        grant usage on schema {{ schema }} to role {{ role }};
        grant select on all tables in {{ schema }} to role {{ role }};
        grant select on all views in {{ schema }} to role {{ role }};
    {% endset %}

    {% do run_query(query) %}

{% endmacro %}