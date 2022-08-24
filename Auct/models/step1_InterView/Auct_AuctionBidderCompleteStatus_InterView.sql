{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONBIDDERCOMPLETESTATUSID] [AuctionBidderCompleteStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AuctionBidderCompleteStatus_Raw]
