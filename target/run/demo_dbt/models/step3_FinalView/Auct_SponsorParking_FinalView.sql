create view "stg"."Auct_SponsorParking_FinalView__dbt_tmp" as
    
Select
	[SponsorParkingID],[ParkingTypeID],[SponsorAuctionID],[SponsorParkingNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorParking_Incr] 
Where [dbt_valid_to] is null
