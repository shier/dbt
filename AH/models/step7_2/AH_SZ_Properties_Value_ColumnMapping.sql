{{ config(materialized='table',schema='stg')}}

{% set query %}
    
SELECT distinct customfieldid FROM stg.AH_Listingproperties_FinalView where  customfieldid is not null
    
{% endset %}

{% set results = run_query(query) %}
{% if execute %}
    {% set results_list =  results.columns[0].values()%}

    {% for id in results_list %}
        select CustomFieldID as customfieldid,
               ValueColumn as value_columnname
        from 
            (select CustomFieldID, 
                ValueColumn, 
                ValueCount,
                ROW_NUMBER() over (order by ValueCount desc) as rn
            from 
                (select CustomFieldID, 
                        count(BoolNativeValue) as BoolNativeValue,
                        count(StringNativeValue) as StringNativeValue,
                        count(IntNativeValue) as IntNativeValue,
                        count(DecimalNativeValue) as DecimalNativeValue,
                        count(DateTimeNativeValue) as DateTimeNativeValue,
                        count(EnumNativeValue) as EnumNativeValue
                    from stg.AH_Listingproperties_FinalView 
                    where CustomFieldID = concat('',{{id}},'')
                    group by CustomFieldID) pvt 
                UNPIVOT
                (ValueCount for ValueColumn in (BoolNativeValue,StringNativeValue,IntNativeValue,DecimalNativeValue,DateTimeNativeValue,EnumNativeValue) ) as unpvt
            ) t
        where rn = 1

        union all
    {% endfor %}
    select ''  as customfieldid, '' as value_columnname  where 1=2
{% endif %}

