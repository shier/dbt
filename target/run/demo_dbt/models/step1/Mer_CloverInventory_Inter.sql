
  
  if object_id ('"stg"."Mer_CloverInventory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_CloverInventory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_CloverInventory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_CloverInventory_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_CloverInventory_Inter__dbt_tmp_temp_view as
    
Select
	cast([Id] as nvarchar(4000)) [ID],
	[CloverModifiedDate] [CloverModifiedDate],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	[Hidden] [Hidden],
	[DefaultTaxRates] [DefaultTaxRates],
	[IsRevenue] [IsRevenue],
	[Price] [Price],
	[Cost] [Cost],
	[StockCount] [StockCount],
	cast([PriceType] as nvarchar(4000)) [PriceType],
	cast([UnitName] as nvarchar(4000)) [UnitName],
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AlternateName] as nvarchar(4000)) [AlternateName],
	cast([Code] as nvarchar(4000)) [Code],
	cast([Sku] as nvarchar(4000)) [SKU]
From stg.[Mer_CloverInventory_Raw]
    ');

  CREATE TABLE "stg"."Mer_CloverInventory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_CloverInventory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_CloverInventory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_CloverInventory_Inter__dbt_tmp_temp_view"
    end


