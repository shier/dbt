{{ config(materialized='view',schema='stg')}}
Select
	[ID],[FilterCodeID],[CreateDate],[ModifyDate],[IsActive],[FilterType],[FilterValue] 
From stg.[CC_EmailFilter_Incr] 
Where [dbt_valid_to] is null