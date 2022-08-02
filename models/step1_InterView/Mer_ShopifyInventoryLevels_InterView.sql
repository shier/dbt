{{ config(materialized='view',schema='stg')}}
Select
	cast([InventoryItemId] as nvarchar(4000)) [InventoryItemID],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	[Available] [Available]
From stg.[Mer_ShopifyInventoryLevels_Raw]
