{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderApplicationID] as int) [BidderApplicationID],
	cast([AuctionID] as int) [AuctionID],
	cast([AuctionName] as nvarchar(4000)) [AuctionName],
	cast([DateRange] as nvarchar(4000)) [Daterange],
	cast([PreRegistrationFee] as int) [PreRegistrationFee],
	cast([PreRegistrationCutoffDate] as nvarchar(4000)) [PreRegistrationCutoffDate] 
From stg.[Auct_BidderApplication_FinalView]