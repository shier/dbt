{{ config(materialized='table',schema='stg',tags=['processing'])}}



{% set Query %}
    select name from stg.AH_SZ_Properties_CustomFields_Lookup where name != 'listingid'
{% endset %}

{% set results = run_query(Query) %}
{% set customfields_colname_comma = '' %}

{% if execute %}
    {% set results_list =  results.columns[0].values()%}

    {% set customfields_colname_comma ='[' ~ results_list|join('], [') ~ ']' %}

{% endif %} 

{% set Query %}
    select col_type_cast  from stg.AH_SZ_Properties_CustomFields_Lookup
{% endset %}

{% set results = run_query(Query) %}
{% set customfields_typecast = '' %}

{% if execute %}
    {% set results_list =  results.columns[0].values()%}
    {% set customfields_typecast = results_list|join(', ') %}

{% endif %} 

WITH pivot_data_input AS
(
    SELECT 
        listingid, -- Grouping Column
        customfieldname, -- Spreading Column
        customfieldvalue -- Aggregate Column
    FROM [stg].[AH_SZ_AllProperties_One_Column] 
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


select 
    listingid, {{customfields_colname_comma}}
from pivoted_data
