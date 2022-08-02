{{ config(materialized='view',schema='stg')}}
Select
	[COUNT] [Count],
	cast([SKU] as nvarchar(4000)) [SKU]
From stg.[Mer_InventoryLevels_Raw]
