
  
  if object_id ('"stg"."AH_CategoryCount_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CategoryCount_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CategoryCount_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_CategoryCount_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_CategoryCount_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	Count Count,
	CategoryId CategoryID
From AH_CategoryCount_Raw
    ');

  CREATE TABLE "stg"."AH_CategoryCount_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CategoryCount_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_CategoryCount_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CategoryCount_Inter__dbt_tmp_temp_view"
    end


