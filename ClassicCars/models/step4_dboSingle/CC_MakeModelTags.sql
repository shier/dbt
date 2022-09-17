{{ config(materialized='table',schema='dbo')}}
Select
	cast([MakeModelFK] as int) [MakeModelFK],
	cast([TagFK] as int) [TagFK] 
From stg.[CC_MakeModelTags_FinalView]