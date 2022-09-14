{% macro macro_practice() %}

    {% set query %}
    
    SELECT count(distinct customfieldid) FROM stg.AH_Listingproperties_FinalView
    
    {% endset %}
    
    {% set results = run_query(query) %}
    {# execute is a Jinja variable that returns True when dbt is in "execute" mode i.e. True when running dbt run but False during dbt compile. #}
    {% if execute %}
    {% set results_list = results.rows[0][0] %}
    {% else %}
    {% set results_list = [] %}
    {% endif %}
    {{ return(results_list) }}

{% endmacro %}