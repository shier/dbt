create view "stg"."Mer_InventoryLevels_InterView__dbt_tmp" as
    
Select
	[COUNT] [Count],
	cast([SKU] as nvarchar(4000)) [SKU]
From stg.[Mer_InventoryLevels_Raw]
