{{ config(materialized='table',schema='dbo')}}
Select
	cast([NextID] as int) [NextID] 
From stg.[AH_KeyTable_FinalView]