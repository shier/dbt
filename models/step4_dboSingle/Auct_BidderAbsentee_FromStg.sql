{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderAbsenteeID] as int) [BidderAbsenteeid],
	cast([Notes] as nvarchar(4000)) [Notes],
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([ContactInfo] as nvarchar(4000)) [ContactInfo],
	cast([OtherContactInfo] as nvarchar(4000)) [OtherContactInfo],
	cast([MaximumBID] as int) [MaximumBId],
	cast([AuctionID] as int) [AuctionID],
	cast([LotNumber] as numeric(18,2)) [Lotnumber] 
From stg.[Auct_BidderAbsentee_FinalView]