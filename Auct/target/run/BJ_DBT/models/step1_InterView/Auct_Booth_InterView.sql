create view "dbo_stg"."Auct_Booth_InterView__dbt_tmp" as
    
Select
	[BOOTHID] [BoothID],
	[LOCATIONID] [LocationID],
	[AUCTIONID] [AuctionID],
	[AMPSREQUIRED] [AmpsRequired],
	[VOLTSREQUIRED] [VoltsRequired],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Booth_Raw]
