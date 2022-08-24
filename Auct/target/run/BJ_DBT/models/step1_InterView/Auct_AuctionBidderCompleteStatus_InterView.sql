create view "dbo_stg"."Auct_AuctionBidderCompleteStatus_InterView__dbt_tmp" as
    
Select
	[AUCTIONBIDDERCOMPLETESTATUSID] [AuctionBidderCompleteStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AuctionBidderCompleteStatus_Raw]
