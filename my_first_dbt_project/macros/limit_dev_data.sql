{% macro limit_dev_data(column_name, dev_period_of_data=1, period_of_time='year') %}
{% if target.name == 'dev' %}
where {{ column_name }} >= dateadd({{ period_of_time }}, - {{ dev_period_of_data }}, current_timestamp)
{% endif %}
{% endmacro %}