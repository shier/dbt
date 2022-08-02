
  
  if object_id ('"stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_ShopifyProductVariants_Inter__dbt_tmp_temp_view as
    
Select
	cast([Id] as nvarchar(4000)) [ID],
	cast([Option2] as nvarchar(4000)) [Option2],
	cast([Option3] as nvarchar(4000)) [Option3],
	cast([BarCode] as nvarchar(4000)) [Barcode],
	cast([WeightUnit] as nvarchar(4000)) [WEightUnit],
	cast([InventoryItemId] as nvarchar(4000)) [InventoryItemID],
	cast([ProductId] as nvarchar(4000)) [ProductID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Sku] as nvarchar(4000)) [SKU],
	cast([FulfillmentService] as nvarchar(4000)) [FulfillmentService],
	cast([Option1] as nvarchar(4000)) [Option1],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	[Position] [Position],
	[Taxable] [Taxable],
	[RequiresShipping] [RequiresShipping],
	[Price] [Price],
	[CompareAtPrice] [CompAreatPrice],
	[Grams] [Grams],
	[InventoryQty] [Inventoryqty],
	[Weight] [WEight],
	[DelayedSellOnlineQty] [DelayedsellOnlineqty],
	[OldInventoryQty] [OldInventoryqty]
From stg.[Mer_ShopifyProductVariants_Raw]
    ');

  CREATE TABLE "stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProductVariants_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductVariants_Inter__dbt_tmp_temp_view"
    end


