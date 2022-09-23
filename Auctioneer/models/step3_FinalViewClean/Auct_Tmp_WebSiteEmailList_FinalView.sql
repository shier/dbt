{{ config(materialized='view',schema='stg',tags=['test0922'])}}
{% set query %}
	Select concat(REPLACE(trim([First_Name]),'"',''),',',REPLACE(trim([Last_Name]),'"',''),',',REPLACE(trim([Email]),'"',''), ',', REPLACE(trim([Email_Type]),'"','')) as total  From stg.[Auct_Tmp_WebSiteEmailList_Incr] Where [dbt_valid_to] is null and [Email_Type] like '%@%'

{% endset %}

{% set results = run_query(query) %}
{% if execute %}
    {% set results_list =  results.columns[0].values()%}

    {% for item in results_list %}
		{% set itemList = item.split(',') %}
        {% set str='' %}
        {% set checkEmail = itemList[itemList|length-3].split('@') %}
        {% if checkEmail|length > 1 %} 
            {% set my_string = [] %}
            {% for k in range(itemList|length-3) %}
                {% if k>0 %}
                    {% set str=str ~ ' ' ~ itemList[k] %}
                    {% do my_string.append(itemList[k]) %}
                {% endif %}
            {% endfor %}
            {% set str=my_string|join(' ') %}

            select '{{itemList[0]}}' as First_Name ,'{{str}}' as Last_Name,'{{itemList[itemList|length-3]}}' as Email, '{{itemList[itemList|length-1]}}' as Email_Type
            union all
            select '{{itemList[0]}}' as First_Name ,'{{str}}' as Last_Name,'{{itemList[itemList|length-2]}}' as Email, '{{itemList[itemList|length-1]}}' as Email_Type
            union all
        {% else %}
            {% set my_string = [] %}
            {% for k in range(itemList|length-2) %}
                {% if k>0 %}
                    {% set str=str ~ ' ' ~ itemList[k] %}
                    {% do my_string.append(itemList[k]) %}
                {% endif %}
            {% endfor %}
            {% set str=my_string|join(' ') %}
            select '{{itemList[0]}}' as First_Name ,'{{str}}' as Last_Name, '{{itemList[itemList|length-2]}}' as Email, '{{itemList[itemList|length-1]}}' as Email_Type
            union all
        {% endif %}
    {% endfor %}
{% endif %}


Select [First_Name],[Last_Name],[Email],[Email_Type]  From stg.[Auct_Tmp_WebSiteEmailList_Incr] Where [dbt_valid_to] is null and [Email_Type] not like '%@%'
