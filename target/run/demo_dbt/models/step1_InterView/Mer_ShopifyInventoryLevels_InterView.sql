create view "stg"."Mer_ShopifyInventoryLevels_InterView__dbt_tmp" as
    
Select
	cast([InventoryItemId] as nvarchar(4000)) [InventoryItemID],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	[Available] [Available]
From stg.[Mer_ShopifyInventoryLevels_Raw]
