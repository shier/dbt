{{ config(materialized='view',schema='stg')}}
Select
	[MakeModelFK],[TagFK] 
From [CC_MakeModelTags_Incr] 
Where [dbt_valid_to] is null