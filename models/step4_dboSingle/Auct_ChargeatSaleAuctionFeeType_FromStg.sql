{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Active] as bit) [Active],
	cast([AuctionID] as int) [AuctionID],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([ItemTypeID] as int) [ItemTypeID] 
From stg.[Auct_ChargeatSaleAuctionFeeType_FinalView]