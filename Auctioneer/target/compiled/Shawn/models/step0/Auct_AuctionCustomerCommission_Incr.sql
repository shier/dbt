
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([SellerComission] as varchar), Cast([BuyerComission] as varchar), Cast([MinSellerCharge] as varchar), Cast([MinBuyerCharge] as varchar), Cast([AuctionID] as varchar), Cast([CustomerAccountID] as varchar), Cast([ItemTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionCustomerCommission_InterView]
	)
Select * From hashData
