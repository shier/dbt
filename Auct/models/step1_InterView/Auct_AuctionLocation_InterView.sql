{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONLOCATIONID] [AuctionLocationID],
	[AUCTIONID] [AuctionID],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATE] as nvarchar(4000)) [State],
	cast([COUNTY] as nvarchar(4000)) [County],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AuctionLocation_Raw]
