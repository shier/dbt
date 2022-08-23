
  
  if object_id ('"dbo"."Mer_NavInventory_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_NavInventory_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_NavInventory_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_NavInventory_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_NavInventory_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SKU] as nvarchar(4000)) [SKU],
	cast([Price] as numeric(194)) [Price],
	cast([Inventory] as numeric(194)) [Inventory],
	cast([IsTest] as int) [IsTest],
	cast([CreatedDate] as datetime) [CreatedDate],
	cast([Updateddate] as datetime) [Updateddate],
	cast([RemovedDate] as datetime) [RemovedDate] 
From stg.[Mer_NavInventory_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_NavInventory_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_NavInventory_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_NavInventory_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_NavInventory_FromStg__dbt_tmp_temp_view"
    end


