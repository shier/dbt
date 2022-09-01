{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[ModifyDate],[Name],[DisplayName],[AppKey],[AppSecret],[IsActive] 
From stg.[CC_SocialprovIDEr_Incr] 
Where [dbt_valid_to] is null