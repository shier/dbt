{{ config(materialized='table',schema='dbo')}}
Select
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([SellerComission] as numeric(18,0)) [SellerComission],
	cast([BuyerComission] as numeric(18,0)) [BuyerComission],
	cast([MinSellerCharge] as numeric(18,0)) [MinSellerCharge],
	cast([MinBuyerCharge] as numeric(18,0)) [MinBuyerCharge],
	cast([AuctionID] as int) [AuctionID],
	cast([ItemTypeID] as int) [ItemTypeID] 
From stg.[Auct_AuctionCustomerCommission_FinalView]