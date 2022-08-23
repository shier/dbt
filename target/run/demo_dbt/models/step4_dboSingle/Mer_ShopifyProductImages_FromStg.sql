
  
  if object_id ('"dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_ShopifyProductImages_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([ImageHeight] as int) [ImageHeight],
	cast([ImageWidth] as int) [ImageWidth],
	cast([CreatedDate] as datetime) [CreatedDate],
	cast([Updateddate] as datetime) [Updateddate],
	cast([RemovedDate] as datetime) [RemovedDate],
	cast([ProductID] as nvarchar(4000)) [ProductID],
	cast([ImageURL] as nvarchar(4000)) [ImageURL],
	cast([Alt] as nvarchar(4000)) [Alt] 
From stg.[Mer_ShopifyProductImages_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_ShopifyProductImages_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProductImages_FromStg__dbt_tmp_temp_view"
    end


