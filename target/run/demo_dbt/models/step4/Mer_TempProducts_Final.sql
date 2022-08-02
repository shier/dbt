
  
  if object_id ('"stg"."Mer_TempProducts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TempProducts_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TempProducts_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TempProducts_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_TempProducts_Final__dbt_tmp_temp_view as
    
Select
	[No_],[No_2],[Description],[Description2],[BaseUnitofMeasure],[ItemCategoryCode],[UnitPrice] 
From [Mer_TempProducts_Incr]
    ');

  CREATE TABLE "stg"."Mer_TempProducts_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TempProducts_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TempProducts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TempProducts_Final__dbt_tmp_temp_view"
    end


