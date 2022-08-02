{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsActive],[Email],[CreateDate],[ModifyDate] 
From stg.[CC_NewsLetter_Incr] 
Where [dbt_valid_to] is null