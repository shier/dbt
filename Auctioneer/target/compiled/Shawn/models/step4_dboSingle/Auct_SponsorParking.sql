
Select
	cast([SponsorParkingID] as int) [SPONSORPARKINGID],
	cast([ParkingTypeID] as int) [PARKINGTYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorParkingNumber] as int) [SPONSORPARKINGNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorParking_FinalView]