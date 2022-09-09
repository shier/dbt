{{ config(materialized='view',schema='stg')}}
Select
	[SKU],[Price],[Inventory],[IsTest],[CreatedDate],[Updateddate],[RemovedDate] 
From stg.[Mer_NavInventory_Incr] 
Where [dbt_valid_to] is null