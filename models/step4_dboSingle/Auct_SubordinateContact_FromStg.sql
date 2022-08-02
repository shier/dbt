{{ config(materialized='table',schema='dbo')}}
Select
	cast([SubordinateContactID] as int) [SubordinateContactID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([VendorID] as int) [VendorID],
	cast([ContactID] as int) [ContactID],
	cast([MediaPositionID] as int) [MediaPositionID],
	cast([DaysCovering] as nvarchar(4000)) [DaysCovering],
	cast([JobTitle] as nvarchar(4000)) [JobTitle],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SubordinateContact_FinalView]