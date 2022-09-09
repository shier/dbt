{{ config(materialized='view',schema='stg')}}
Select
	[SellerComission],[BuyerComission],[MinSellerCharge],[MinBuyerCharge],[AuctionID],[CustomerAccountID],[ItemTypeID] 
From [Auct_AuctionCustomerCommission_Incr] 
Where [dbt_valid_to] is null