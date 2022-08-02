{{ config(materialized='view',schema='stg')}}
Select
	[FEETYPEID] [FeeTypeID],
	[ACTIVE] [Active],
	[AUCTIONID] [AuctionID],
	[CREATEDBYUSERID] [CreatedByUserID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_ChargeatSaleAuctionFeeType_Raw]
