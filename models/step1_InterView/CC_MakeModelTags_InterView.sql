{{ config(materialized='view',schema='stg')}}
Select
	[MakeModelFK] [MakeModelFK],
	[TagFK] [TagFK]
From stg.[CC_MakeModelTags_Raw]
