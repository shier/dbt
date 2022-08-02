
  
  if object_id ('"stg"."Mer_ShopifyProductSold_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductSold_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProductSold_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProductSold_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_ShopifyProductSold_Inter__dbt_tmp_temp_view as
    
Select
	cast(Handle as nvarchar(4000)) Handle,
	cast(VariantSKU as nvarchar(4000)) Variantsku
From Mer_ShopifyProductSold_Raw
    ');

  CREATE TABLE "stg"."Mer_ShopifyProductSold_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProductSold_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProductSold_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductSold_Inter__dbt_tmp_temp_view"
    end


