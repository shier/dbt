
  
  if object_id ('"stg"."CC_demo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_demo__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_demo__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_demo__dbt_tmp"
    end


   EXEC('create view stg.CC_demo__dbt_tmp_temp_view as
    

select top 10 * from [stg].[CC_Listing_finalView]
    ');

  CREATE TABLE "stg"."CC_demo__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_demo__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_demo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_demo__dbt_tmp_temp_view"
    end


