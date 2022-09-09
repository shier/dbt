{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsActive],[StateCode],[Name],[CountryCode],[StateNameslug],[CreateDate],[ModifyDate],[CountryID] 
From stg.[CC_States_Incr] 
Where [dbt_valid_to] is null