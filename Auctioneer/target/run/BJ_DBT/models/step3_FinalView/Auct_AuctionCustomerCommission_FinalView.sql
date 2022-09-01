create view "stg"."Auct_AuctionCustomerCommission_FinalView__dbt_tmp" as
    
Select
	[CustomerAccountID],[SellerComission],[BuyerComission],[MinSellerCharge],[MinBuyerCharge],[AuctionID],[ItemTypeID] 
From stg.[Auct_AuctionCustomerCommission_Incr] 
Where [dbt_valid_to] is null
