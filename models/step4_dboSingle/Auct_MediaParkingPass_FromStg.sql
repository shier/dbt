{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaParkingPassID] as int) [MediaParkingPassID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([ParkingPassNumber] as nvarchar(4000)) [ParkingPassNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaParkingPass_FinalView]