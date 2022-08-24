create view "dbo_stg"."Auct_BidderAbsentee_InterView__dbt_tmp" as
    
Select
	[BIDDERABSENTEEID] [BidderAbsenteeID],
	cast([NOTES] as nvarchar(4000)) [Notes],
	[AUCTIONBIDDERID] [AuctionBidderID],
	cast([CONTACTINFO] as nvarchar(4000)) [ContactInfo],
	cast([OTHERCONTACTINFO] as nvarchar(4000)) [OtherContactInfo],
	[MAXIMUMBID] [MaximumBID],
	[AUCTIONID] [AuctionID],
	[LOTNUMBER] [LotNumber]
From stg.[Auct_BidderAbsentee_Raw]
