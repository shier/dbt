create view "dbo_stg"."Auct_AuctionCustomerCommission_InterView__dbt_tmp" as
    
Select
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[SELLERCOMISSION] [SellerComission],
	[BUYERCOMISSION] [BuyerComission],
	[MINSELLERCHARGE] [MinSellerCharge],
	[MINBUYERCHARGE] [MinBuyerCharge],
	[AUCTIONID] [AuctionID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_AuctionCustomerCommission_Raw]
