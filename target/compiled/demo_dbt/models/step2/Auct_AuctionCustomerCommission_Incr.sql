
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(ItemTypeID as varchar), Cast(SellerComission as varchar), Cast(BuyerComission as varchar), Cast(MinSellerCharge as varchar), Cast(MinBuyerCharge as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionCustomerCommission_Inter]
	)
Select * From hashData
