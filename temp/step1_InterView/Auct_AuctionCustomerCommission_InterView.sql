{{ config(materialized='view',schema='stg')}}
Select
	[SELLERCOMISSION] [SellerComission],
	[BUYERCOMISSION] [BuyerComission],
	[MINSELLERCHARGE] [MinSellerCharge],
	[MINBUYERCHARGE] [MinBuyerCharge],
	[AUCTIONID] [AuctionID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_AuctionCustomerCommission_Raw]
