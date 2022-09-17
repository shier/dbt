{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionBidderPackageStatusID] as int) [AuctionBidderPackageStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_AuctionBidderPackageStatus_FinalView]