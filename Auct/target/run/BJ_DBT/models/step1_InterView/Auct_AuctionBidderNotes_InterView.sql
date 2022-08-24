create view "dbo_stg"."Auct_AuctionBidderNotes_InterView__dbt_tmp" as
    
Select
	[NOTEID] [NoteID],
	[AUCTIONBIDDERID] [AuctionBidderID]
From stg.[Auct_AuctionBidderNotes_Raw]
