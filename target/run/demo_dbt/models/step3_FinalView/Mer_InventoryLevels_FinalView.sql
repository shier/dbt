create view "stg"."Mer_InventoryLevels_FinalView__dbt_tmp" as
    
Select
	[Count],[SKU] 
From [Mer_InventoryLevels_Incr]
