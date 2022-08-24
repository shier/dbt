{{ config(materialized='view',schema='stg')}}
Select
	[CustomerAccountID],[SellerComission],[BuyerComission],[MinSellerCharge],[MinBuyerCharge],[AuctionID],[ItemTypeID] 
From stg.[Auct_AuctionCustomerCommission_Incr] 
Where [dbt_valid_to] is null