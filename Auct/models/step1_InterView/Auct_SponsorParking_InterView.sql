{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORPARKINGID] [SponsorParkingID],
	[PARKINGTYPEID] [ParkingTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORPARKINGNUMBER] [SponsorParkingNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorParking_Raw]
