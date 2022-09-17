{{ config(materialized='table',schema='dbo')}}
Select
	cast([NextID] as int) [NextId] 
From stg.[AH_KeyTable_FinalView]