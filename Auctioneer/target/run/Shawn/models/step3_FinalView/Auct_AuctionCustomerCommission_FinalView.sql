create view "stg"."Auct_AuctionCustomerCommission_FinalView__dbt_tmp" as
    
Select
	[SellerComission],[BuyerComission],[MinSellerCharge],[MinBuyerCharge],[AuctionID],[CustomerAccountID],[ItemTypeID] 
From [Auct_AuctionCustomerCommission_Incr]
