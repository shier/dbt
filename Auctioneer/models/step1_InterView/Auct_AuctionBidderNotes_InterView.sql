{{ config(materialized='view',schema='stg')}}
Select
	[NOTEID] [NoteID],
	[AUCTIONBIDDERID] [AuctionBidderID]
From stg.[Auct_AuctionBidderNotes_Raw]
