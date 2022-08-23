
  
  if object_id ('"dbo"."Mer_InventoryLevels_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_InventoryLevels_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_InventoryLevels_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_InventoryLevels_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_InventoryLevels_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Count] as numeric(194)) [Count],
	cast([SKU] as nvarchar(4000)) [SKU] 
From stg.[Mer_InventoryLevels_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_InventoryLevels_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_InventoryLevels_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_InventoryLevels_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_InventoryLevels_FromStg__dbt_tmp_temp_view"
    end


