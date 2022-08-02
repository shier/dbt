
  
  if object_id ('"stg"."Auct_MediaParkingPass_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaParkingPass_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaParkingPass_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MediaParkingPass_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MediaParkingPass_Inter__dbt_tmp_temp_view as
    
Select
	[MEDIAPARKINGPASSID] [MediaParkingPassID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	cast([PARKINGPASSNUMBER] as nvarchar(4000)) [ParkingPassNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaParkingPass_Raw]
    ');

  CREATE TABLE "stg"."Auct_MediaParkingPass_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaParkingPass_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaParkingPass_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaParkingPass_Inter__dbt_tmp_temp_view"
    end


