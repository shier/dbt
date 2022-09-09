{{ config(materialized='view',schema='stg')}}
Select
	[NextID] 
From stg.[AH_KeyTable_Incr] 
Where [dbt_valid_to] is null