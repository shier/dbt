{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderApplicationID] as int) [BIDDERAPPLICATIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionName] as nvarchar(4000)) [AUCTIONNAME],
	cast([DateRange] as nvarchar(4000)) [DATERANGE],
	cast([PreRegistrationFee] as int) [PREREGISTRATIONFEE],
	cast([PreRegistrationCutoffDate] as nvarchar(4000)) [PREREGISTRATIONCUTOFFDATE] 
From stg.[Auct_BidderApplication_FinalView]