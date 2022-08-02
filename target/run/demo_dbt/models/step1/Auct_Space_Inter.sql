
  
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
	[SPACEID] [SpaceID],
	cast([NAME] as nvarchar(4000)) [Name],
	[BOOTHID] [BoothID],
	[SPACESIZEID] [SpaceSizeID],
	[ALLOCATEDPOWER] [AllocatedPower],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([PHONEIN] as nvarchar(4000)) [Phonein],
	cast([WIREDINTERNET] as nvarchar(4000)) [WiredInternet],
	cast([WIRELESSINTERNET] as nvarchar(4000)) [WirelessInternet]
From stg.[Auct_Space_Raw]
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


