
Select
	[MediaParkingPassID],[Created],[MediaAuctionID],[UpdateEventID],[ParkingPassNumber] 
From stg.[Auct_MediaParkingPass_Incr] 
Where [dbt_valid_to] is null