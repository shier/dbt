create view "stg"."Auct_MediaParkingPass_FinalView__dbt_tmp" as
    
Select
	[MediaParkingPassID],[MediaAuctionID],[ParkingPassNumber],[Created],[UpdateEventID] 
From stg.[Auct_MediaParkingPass_Incr] 
Where [dbt_valid_to] is null
