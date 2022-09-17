{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaParkingPassID] as int) [MEDIAPARKINGPASSID],
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([ParkingPassNumber] as nvarchar(4000)) [PARKINGPASSNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaParkingPass_FinalView]