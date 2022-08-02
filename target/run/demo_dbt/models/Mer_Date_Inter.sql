
  
  if object_id ('"stg"."Mer_Date_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Date_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Date_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Date_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Date_Inter__dbt_tmp_temp_view as
    
Select
	DATE Date,
	DATEID DateID
From Mer_Date_Raw
    ');

  CREATE TABLE "stg"."Mer_Date_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Date_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Date_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Date_Inter__dbt_tmp_temp_view"
    end


