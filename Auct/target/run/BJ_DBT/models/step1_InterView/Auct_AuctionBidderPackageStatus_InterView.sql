create view "dbo_stg"."Auct_AuctionBidderPackageStatus_InterView__dbt_tmp" as
    
Select
	[AuctionBidderPackageStatusID] [AuctionBidderPackageStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	[Active] [Active]
From stg.[Auct_AuctionBidderPackageStatus_Raw]
