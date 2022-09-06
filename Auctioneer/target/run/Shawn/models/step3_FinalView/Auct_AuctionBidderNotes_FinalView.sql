create view "stg"."Auct_AuctionBidderNotes_FinalView__dbt_tmp" as
    
Select
	[NoteID],[AuctionBidderID] 
From stg.[Auct_AuctionBidderNotes_Incr] 
Where [dbt_valid_to] is null
