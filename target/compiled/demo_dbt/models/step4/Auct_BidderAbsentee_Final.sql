
Select
	[BidderAbsenteeID],[AuctionBidderID],[MaximumBID],[AuctionID],[LotNumber],[Notes],[ContactInfo],[OtherContactInfo] 
From stg.[Auct_BidderAbsentee_Incr] 
Where [dbt_valid_to] is null