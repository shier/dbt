
With hashData as (
		Select
			HASHBYTES('MD5', concat(BMA, Navision, ShipDateVerified, Comments, BillofLading, BillofLadingText, Cast(Created as varchar), Cast(ShipDate as varchar), Cast(ShiptoContactID as varchar), Cast(UpdateEventID as varchar), Cast(Legacy as varchar), Cast(BuyerdealerID as varchar), Cast(SellerAddressID as varchar), Cast(SellerDealerID as varchar), Cast(BlockSaleID as varchar), Cast(CarrierID as varchar), Cast(BuyerCustomerAccountID as varchar), Cast(SellerCustomerAccountID as varchar), Cast(ShiptoAddressID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SaleHistory_Inter]
	)
Select * From hashData
