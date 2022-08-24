create view "stg"."Auct_BidderApplication_InterView__dbt_tmp" as
    
Select
	[BIDDERAPPLICATIONID] [BidderApplicationID],
	[AUCTIONID] [AuctionID],
	cast([AUCTIONNAME] as nvarchar(4000)) [AuctionName],
	cast([DATERANGE] as nvarchar(4000)) [DateRange],
	[PREREGISTRATIONFEE] [PreRegistrationFee],
	cast([PREREGISTRATIONCUTOFFDATE] as nvarchar(4000)) [PreRegistrationCutoffDate]
From stg.[Auct_BidderApplication_Raw]
