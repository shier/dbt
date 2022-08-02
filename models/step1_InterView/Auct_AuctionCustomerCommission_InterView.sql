{{ config(materialized='view',schema='stg')}}
Select
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[SELLERCOMISSION] [SellerComission],
	[BUYERCOMISSION] [BuyerComission],
	[MINSELLERCHARGE] [MinSellerCharge],
	[MINBUYERCHARGE] [MinBuyerCharge],
	[AUCTIONID] [AuctionID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_AuctionCustomerCommission_Raw]
