{{ config(materialized='view',schema='stg')}}
Select
	[NoteID],[AuctionBidderID] 
From stg.[Auct_AuctionBidderNotes_Incr] 
Where [dbt_valid_to] is null