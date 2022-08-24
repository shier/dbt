create view "stg"."Mer_NavInventory_InterView__dbt_tmp" as
    
Select
	cast([Sku] as nvarchar(4000)) [SKU],
	[Price] [Price],
	[Inventory] [Inventory],
	[IsTest] [IsTest],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate]
From stg.[Mer_NavInventory_Raw]
