create view "dbo_stg"."Auct_SponsorParking_InterView__dbt_tmp" as
    
Select
	[SPONSORPARKINGID] [SponsorParkingID],
	[PARKINGTYPEID] [ParkingTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORPARKINGNUMBER] [SponsorParkingNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorParking_Raw]
