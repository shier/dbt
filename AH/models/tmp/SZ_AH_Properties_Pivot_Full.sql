{{ config(materialized='table',schema='stg')}}


{% set Query %}
    select col_definition_str from stg.SZ_AH_Properties_CustomFields_Lookup
{% endset %}

{% set results = run_query(Query) %}
{% set customfields_col_definition_comma = '' %}

{% if execute %}
   {% set results_list =  results.columns[0].values()%}

    {% set customfields_col_definition_comma = results_list|join(', ')  %}
    {{ exceptions.warn(customfields_col_definition_comma) }}

{% endif %} 

{% set Query %}
    select name from stg.SZ_AH_Properties_CustomFields_Lookup where name != 'listingid'
{% endset %}

{% set results = run_query(Query) %}
{% set customfields_colname_comma = '' %}

{% if execute %}
    {% set results_list =  results.columns[0].values()%}

    {% set customfields_colname_comma ='[' ~ results_list|join('], [') ~ ']' %}
    {{ exceptions.warn(customfields_colname_comma) }}

{% endif %} 

{% set Query %}
    select col_type_cast  from stg.SZ_AH_Properties_CustomFields_Lookup
{% endset %}

{% set results = run_query(Query) %}
{% set customfields_typecast = '' %}

{% if execute %}
    {% set results_list =  results.columns[0].values()%}

    {% set customfields_typecast = results_list|join(', ') %}
    {{ exceptions.warn(customfields_typecast) }}

{% endif %} 

WITH pivot_data_input AS
(
    SELECT 
        listingid, -- Grouping Column
        customfieldname, -- Spreading Column
        customfieldvalue -- Aggregate Column
    FROM [stg].[SZ_AH_AllProperties_One_Column] 
        -- [TEST] where listingid = 10023682
),
pivoted_data AS
(
    SELECT 
        listingid, {{customfields_colname_comma}}
    FROM pivot_data_input
    PIVOT (
        max(customfieldvalue) for customfieldname in ( {{customfields_colname_comma}})
    )as pvt
)
    --select * from pivoted_data
select 
    listingid, {{customfields_typecast}}
from pivoted_data
