{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorParkingID] as int) [SponsorParkingID],
	cast([ParkingTypeID] as int) [ParkingTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([SponsorParkingNumber] as int) [SponsorParkingNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorParking_FinalView]