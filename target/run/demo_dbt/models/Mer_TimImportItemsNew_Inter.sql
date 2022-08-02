
  
  if object_id ('"stg"."Mer_TimImportItemsNew_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimImportItemsNew_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TimImportItemsNew_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TimImportItemsNew_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TimImportItemsNew_Inter__dbt_tmp_temp_view as
    
Select
	UPC Upc,
	Orig_Retail_Price Orig_Retail_Price,
	cast(Category as nvarchar(4000)) Category,
	cast(SKU as nvarchar(4000)) Sku,
	cast(Item_Description as nvarchar(4000)) Item_Description,
	cast(Size as nvarchar(4000)) Size
From Mer_TimImportItemsNew_Raw
    ');

  CREATE TABLE "stg"."Mer_TimImportItemsNew_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TimImportItemsNew_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TimImportItemsNew_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimImportItemsNew_Inter__dbt_tmp_temp_view"
    end


