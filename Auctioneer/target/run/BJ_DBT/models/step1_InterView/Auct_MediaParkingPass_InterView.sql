create view "stg"."Auct_MediaParkingPass_InterView__dbt_tmp" as
    
Select
	[MEDIAPARKINGPASSID] [MediaParkingPassID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	cast([PARKINGPASSNUMBER] as nvarchar(4000)) [ParkingPassNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaParkingPass_Raw]
