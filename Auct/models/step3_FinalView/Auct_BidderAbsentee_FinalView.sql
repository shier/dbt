{{ config(materialized='view',schema='stg')}}
Select
	[BidderAbsenteeID],[Notes],[AuctionBidderID],[ContactInfo],[OtherContactInfo],[MaximumBID],[AuctionID],[LotNumber] 
From stg.[Auct_BidderAbsentee_Incr] 
Where [dbt_valid_to] is null