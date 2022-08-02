{{ config(materialized='view',schema='stg')}}
Select
	[MakeModelFK],[TagFK] 
From [CC_MakeModelTags_Incr]