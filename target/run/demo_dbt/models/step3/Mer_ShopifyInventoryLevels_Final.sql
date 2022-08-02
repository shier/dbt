
  
  if object_id ('"stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_ShopifyInventoryLevels_Final__dbt_tmp_temp_view as
    
Select
	[InventoryItemID],[Updateddate],[RemovedDate],[Available] 
From stg.[Mer_ShopifyInventoryLevels_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyInventoryLevels_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyInventoryLevels_Final__dbt_tmp_temp_view"
    end


