{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteID] as int) [Noteid],
	cast([AuctionBidderID] as int) [AuctionbIDderid] 
From stg.[Auct_AuctionBidderNotes_FinalView]