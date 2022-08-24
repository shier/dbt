{{ config(materialized='view',schema='stg')}}
Select
	[MEDIAPARKINGPASSID] [MediaParkingPassID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	cast([PARKINGPASSNUMBER] as nvarchar(4000)) [ParkingPassNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaParkingPass_Raw]
