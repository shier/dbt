{{ config(materialized='view',schema='stg')}}
Select
	[AuctionBidderPackageStatusID] [AuctionBidderPackageStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	[Active] [Active]
From stg.[Auct_AuctionBidderPackageStatus_Raw]
