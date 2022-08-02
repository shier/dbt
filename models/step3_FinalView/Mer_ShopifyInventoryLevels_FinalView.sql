{{ config(materialized='view',schema='stg')}}
Select
	[InventoryItemID],[Updateddate],[RemovedDate],[Available] 
From stg.[Mer_ShopifyInventoryLevels_Incr] 
Where [dbt_valid_to] is null