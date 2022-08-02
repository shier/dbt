{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderBadgeID] as int) [BidderBadgeid],
	cast([BidderBadgeImageID] as int) [BidderBadgeImageID],
	cast([BidderStatusID] as int) [BidderStatusid],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_BidderBadge_FinalView]