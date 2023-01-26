{% macro dollar_to_cent(column_name, decimal_places=0) -%}
   round( 1.0 * {{ column_name }} * 100, {{decimal_places}})
{%- endmacro %}