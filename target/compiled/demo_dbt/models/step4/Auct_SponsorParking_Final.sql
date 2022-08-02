
Select
	[SponsorParkingID],[Created],[ParkingTypeID],[SponsorAuctionID],[SponsorParkingNumber],[UpdateEventID] 
From stg.[Auct_SponsorParking_Incr] 
Where [dbt_valid_to] is null