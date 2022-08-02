{{ config(materialized='view',schema='stg')}}
Select
	[BOOTHID] [BoothID],
	[LOCATIONID] [LocationID],
	[AUCTIONID] [AuctionID],
	[AMPSREQUIRED] [AmpsRequired],
	[VOLTSREQUIRED] [VoltsRequired],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Booth_Raw]
