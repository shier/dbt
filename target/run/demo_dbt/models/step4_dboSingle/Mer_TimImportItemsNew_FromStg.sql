
  
  if object_id ('"dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TimImportItemsNew_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Upc] as float) [Upc],
	cast([Orig_Retail_Price] as numeric(194)) [Orig_Retail_Price],
	cast([Category] as nvarchar(4000)) [Category],
	cast([SKU] as nvarchar(4000)) [SKU],
	cast([Item_Description] as nvarchar(4000)) [Item_Description],
	cast([Size] as nvarchar(4000)) [Size] 
From stg.[Mer_TimImportItemsNew_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TimImportItemsNew_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TimImportItemsNew_FromStg__dbt_tmp_temp_view"
    end


