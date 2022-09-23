{{ config(materialized='table',schema='stg',tags=['now'])}}

{% set query %}
    SELECT id FROM stg.AH_SZ_Properties_FieldIDs 
{% endset %}

{% set results = run_query(query) %}
{% if execute %}
    {% set results_list =  results.columns[0].values()%}

    {% for customfieldid in results_list %}
        {% set itemQuery %}
            select value_columnname from stg.AH_SZ_Properties_Value_ColumnMapping where customfieldid = {{customfieldid}}
        {% endset %}
        {% set resultsItem = run_query(itemQuery) %}
        {% set customfieldvaluecol =  resultsItem.columns[0][0] %}
        select 
            a.listingid,
            a.customfieldid,
            b.name as customfieldname,
            a.customfield_valuecolumn as customfieldvalue
        from (
            select listingid as listingid,
               CustomFieldID as customfieldid,
               cast({{customfieldvaluecol}} as nvarchar(4000)) as customfield_valuecolumn
            from 
                stg.AH_Listingproperties_FinalView 
            where 
                CustomFieldID = {{customfieldid}}

        ) a 
        inner join stg.AH_SZ_Properties_FieldIDs b  -- better parameterize this
        on a.customfieldid = b.id
        union all
    {% endfor %}
    select 
        '' as listingid, '' as customfieldid, '' as customfieldname, '' as customfieldvalue 
    where 2=1
{% endif %}

