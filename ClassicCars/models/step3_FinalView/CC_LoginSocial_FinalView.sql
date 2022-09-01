{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[ModifyDate],[UserID],[SocialprovIDErID],[SocialprovIDErKey],[IsActive] 
From stg.[CC_LoginSocial_Incr] 
Where [dbt_valid_to] is null