{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([NoteID] as int) [NOTEID] 
From stg.[Auct_AuctionBidderNotes_FinalView]