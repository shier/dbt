create view "stg"."Auct_Auctioneer_InterView__dbt_tmp" as
    
Select
	[AUCTIONEERID] [AuctioneerID],
	[ACTIVE] [Active],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Auctioneer_Raw]
