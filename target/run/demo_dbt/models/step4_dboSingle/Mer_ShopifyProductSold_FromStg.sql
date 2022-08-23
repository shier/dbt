
  
  if object_id ('"dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_ShopifyProductSold_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Handle] as varchar(100)) [Handle],
	cast([VariantSKU] as varchar(64)) [SKU] 
From stg.[Mer_ShopifyProductSold_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_ShopifyProductSold_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProductSold_FromStg__dbt_tmp_temp_view"
    end


