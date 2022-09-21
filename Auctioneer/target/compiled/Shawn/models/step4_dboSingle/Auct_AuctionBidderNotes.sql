
Select
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([NoteID] as int) [NOTEID] 
From stg.[Auct_AuctionBidderNotes_FinalView]