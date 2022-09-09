{{ config(materialized='view',schema='stg')}}
Select
	[Count],[SKU] 
From [Mer_InventoryLevels_Incr] 
Where [dbt_valid_to] is null