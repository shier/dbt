
  
  if object_id ('"stg"."AH_Version_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Version_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Version_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Version_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Version_Inter__dbt_tmp_temp_view as
    
Select
	cast(VersionNumber as nvarchar(4000)) VersionNumber,
	cast(Status as nvarchar(4000)) Status,
	DateStamp DaTestamp,
	ID ID
From AH_Version_Raw
    ');

  CREATE TABLE "stg"."AH_Version_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Version_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Version_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Version_Inter__dbt_tmp_temp_view"
    end


