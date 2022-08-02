{{ config(materialized='view',schema='stg')}}
Select
	[TagPK],[TagName],[Slug] 
From stg.[CC_Tags_Incr] 
Where [dbt_valid_to] is null