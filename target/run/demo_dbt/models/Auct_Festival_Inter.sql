
  
  if object_id ('"stg"."Auct_Festival_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Festival_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Festival_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Festival_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Festival_Inter__dbt_tmp_temp_view as
    
Select
	FESTIVALID FestivalID,
	GBS_FESTIVALID GBS_FestivalID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(LONGITUDE as nvarchar(4000)) Longitude,
	cast(LATITUDE as nvarchar(4000)) Latitude
From Auct_Festival_Raw
    ');

  CREATE TABLE "stg"."Auct_Festival_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Festival_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Festival_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Festival_Inter__dbt_tmp_temp_view"
    end


