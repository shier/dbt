{{ config(materialized='view',schema='stg')}}
Select
	[NextId] [NextID]
From stg.[AH_KeyTable_Raw]
