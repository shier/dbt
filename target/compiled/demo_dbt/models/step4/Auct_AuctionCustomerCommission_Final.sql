
Select
	[CustomerAccountID],[AuctionID],[ItemTypeID],[SellerComission],[BuyerComission],[MinSellerCharge],[MinBuyerCharge] 
From stg.[Auct_AuctionCustomerCommission_Incr] 
Where [dbt_valid_to] is null