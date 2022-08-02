
  
  if object_id ('"stg"."AH_ThReadTracking_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ThReadTracking_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ThReadTracking_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ThReadTracking_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ThReadTracking_Inter__dbt_tmp_temp_view as
    
Select
	cast(ThreadGUID as nvarchar(4000)) ThReadGUID,
	cast(Name as nvarchar(4000)) Name,
	PrimaryThread PrimarythRead,
	DateStamp DaTestamp
From AH_ThReadTracking_Raw
    ');

  CREATE TABLE "stg"."AH_ThReadTracking_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ThReadTracking_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ThReadTracking_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ThReadTracking_Inter__dbt_tmp_temp_view"
    end


