{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Lookup],[JsonData],[IsActive],[CreateDate],[ModifyDate] 
From stg.[CC_SalesForceData_Incr] 
Where [dbt_valid_to] is null