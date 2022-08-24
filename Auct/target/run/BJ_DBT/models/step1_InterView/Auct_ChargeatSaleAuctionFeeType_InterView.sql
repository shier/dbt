create view "dbo_stg"."Auct_ChargeatSaleAuctionFeeType_InterView__dbt_tmp" as
    
Select
	[FEETYPEID] [FeeTypeID],
	[ACTIVE] [Active],
	[AUCTIONID] [AuctionID],
	[CREATEDBYUSERID] [CreatedByUserID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_ChargeatSaleAuctionFeeType_Raw]
