
  
  if object_id ('"stg"."Auct_Space_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Space_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Space_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Space_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Space_Inter__dbt_tmp_temp_view as
    
Select
	cast(WIREDINTERNET as nvarchar(4000)) WiredInternet,
	cast(WIRELESSINTERNET as nvarchar(4000)) WirelessInternet,
	cast(NAME as nvarchar(4000)) Name,
	cast(PHONEIN as nvarchar(4000)) Phonein,
	CREATED Created,
	BOOTHID BoothID,
	SPACESIZEID SpaceSizeID,
	ALLOCATEDPOWER AllocatedPower,
	UPDATEEVENTID UpdateEventID,
	SPACEID SpaceID
From Auct_Space_Raw
    ');

  CREATE TABLE "stg"."Auct_Space_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Space_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Space_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Space_Inter__dbt_tmp_temp_view"
    end


