create view "stg"."Mer_ShopifyInventoryLevels_FinalView__dbt_tmp" as
    
Select
	[InventoryItemID],[Updateddate],[RemovedDate],[Available] 
From stg.[Mer_ShopifyInventoryLevels_Incr] 
Where [dbt_valid_to] is null
