{{ config(materialized='table',schema='dbo')}}
Select
	cast([SellerComission] as numeric(18,0)) [SELLERCOMISSION],
	cast([BuyerComission] as numeric(18,0)) [BUYERCOMISSION],
	cast([MinSellerCharge] as numeric(18,0)) [MINSELLERCHARGE],
	cast([MinBuyerCharge] as numeric(18,0)) [MINBUYERCHARGE],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ItemTypeID] as int) [ITEMTYPEID] 
From stg.[Auct_AuctionCustomerCommission_FinalView]