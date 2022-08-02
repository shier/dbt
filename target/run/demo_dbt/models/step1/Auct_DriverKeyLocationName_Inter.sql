
  
  if object_id ('"stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DriverKeyLocationName_Inter__dbt_tmp_temp_view as
    
Select
	[DRIVERKEYLOCATIONNAMEID] [DriverKeyLocationNameID],
	cast([KEYLOCATIONNAME] as nvarchar(4000)) [KeyLocationName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_DriverKeyLocationName_Raw]
    ');

  CREATE TABLE "stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DriverKeyLocationName_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DriverKeyLocationName_Inter__dbt_tmp_temp_view"
    end


