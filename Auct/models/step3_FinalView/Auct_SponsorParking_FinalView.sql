{{ config(materialized='view',schema='stg')}}
Select
	[SponsorParkingID],[ParkingTypeID],[SponsorAuctionID],[SponsorParkingNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorParking_Incr] 
Where [dbt_valid_to] is null