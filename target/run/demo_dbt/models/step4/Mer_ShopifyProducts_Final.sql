
  
  if object_id ('"stg"."Mer_ShopifyProducts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProducts_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProducts_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProducts_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_ShopifyProducts_Final__dbt_tmp_temp_view as
    
Select
	[ID],[Title],[Bodyhtml],[Options1Values],[Options2Name],[Options2Values],[Options3Name],[Options3Values],[Vendor],[ProductType],[Handle],[Tags],[Publishedscope],[Options1Name],[PublishedDate],[CreatedDate],[Updateddate],[RemovedDate] 
From stg.[Mer_ShopifyProducts_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Mer_ShopifyProducts_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProducts_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProducts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProducts_Final__dbt_tmp_temp_view"
    end

