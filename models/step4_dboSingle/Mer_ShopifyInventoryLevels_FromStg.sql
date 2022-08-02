{{ config(materialized='table',schema='dbo')}}
Select
	cast([InventoryItemID] as nvarchar(4000)) [InventoryItemID],
	cast([Updateddate] as datetime) [Updateddate],
	cast([RemovedDate] as datetime) [RemovedDate],
	cast([Available] as int) [Available] 
From stg.[Mer_ShopifyInventoryLevels_FinalView]