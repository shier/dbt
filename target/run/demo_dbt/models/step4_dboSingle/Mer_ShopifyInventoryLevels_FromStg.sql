
  
  if object_id ('"dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_ShopifyInventoryLevels_FromStg__dbt_tmp_temp_view as
    
Select
	cast([InventoryItemID] as nvarchar(4000)) [InventoryItemID],
	cast([Updateddate] as datetime) [Updateddate],
	cast([RemovedDate] as datetime) [RemovedDate],
	cast([Available] as int) [Available] 
From stg.[Mer_ShopifyInventoryLevels_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_ShopifyInventoryLevels_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyInventoryLevels_FromStg__dbt_tmp_temp_view"
    end


