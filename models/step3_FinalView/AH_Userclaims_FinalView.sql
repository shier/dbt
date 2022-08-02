{{ config(materialized='view',schema='stg')}}
Select
	[ID],[UserID],[ClaimType],[ClaimValue] 
From stg.[AH_Userclaims_Incr] 
Where [dbt_valid_to] is null