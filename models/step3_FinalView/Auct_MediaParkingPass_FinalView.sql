{{ config(materialized='view',schema='stg')}}
Select
	[MediaParkingPassID],[MediaAuctionID],[ParkingPassNumber],[Created],[UpdateEventID] 
From stg.[Auct_MediaParkingPass_Incr] 
Where [dbt_valid_to] is null