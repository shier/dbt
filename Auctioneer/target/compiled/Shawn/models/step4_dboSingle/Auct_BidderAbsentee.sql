
Select
	cast([BidderAbsenteeID] as int) [BIDDERABSENTEEID],
	cast([Notes] as nvarchar(4000)) [NOTES],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([ContactInfo] as nvarchar(4000)) [CONTACTINFO],
	cast([OtherContactInfo] as nvarchar(4000)) [OTHERCONTACTINFO],
	cast([MaximumBID] as int) [MAXIMUMBID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER] 
From stg.[Auct_BidderAbsentee_FinalView]