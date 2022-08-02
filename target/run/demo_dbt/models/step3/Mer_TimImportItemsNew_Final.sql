
  
  if object_id ('"stg"."Mer_TimImportItemsNew_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimImportItemsNew_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TimImportItemsNew_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TimImportItemsNew_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_TimImportItemsNew_Final__dbt_tmp_temp_view as
    
Select
	[Upc],[Orig_Retail_Price],[Category],[SKU],[Item_Description],[Size] 
From [Mer_TimImportItemsNew_Incr]
    ');

  CREATE TABLE "stg"."Mer_TimImportItemsNew_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TimImportItemsNew_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TimImportItemsNew_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimImportItemsNew_Final__dbt_tmp_temp_view"
    end


