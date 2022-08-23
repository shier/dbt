
  
  if object_id ('"dbo"."Mer_CloverInventory_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_CloverInventory_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_CloverInventory_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_CloverInventory_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_CloverInventory_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as varchar(100)) [CloverInventoryMerchantID],
	cast([CloverModifiedDate] as datetime) [CloverModifiedDate],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate],
	cast([Hidden] as int) [Hidden],
	cast([DefaultTaxRates] as int) [DefaultTaxRates],
	cast([IsRevenue] as int) [IsRevenue],
	cast([Price] as money) [Price],
	cast([Cost] as money) [Cost],
	cast([StockCount] as decimal) [StockCount],
	cast([PriceType] as varchar(100)) [PriceType],
	cast([UnitName] as varchar(100)) [UnitName],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([Name] as varchar(500)) [Name],
	cast([AlternateName] as varchar(100)) [AlternateName],
	cast([Code] as varchar(100)) [Code],
	cast([SKU] as varchar(64)) [SKU] 
From stg.[Mer_CloverInventory_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_CloverInventory_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_CloverInventory_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_CloverInventory_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_CloverInventory_FromStg__dbt_tmp_temp_view"
    end


