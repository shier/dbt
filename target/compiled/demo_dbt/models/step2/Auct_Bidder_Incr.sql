
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(BidLimit as varchar), Cast(BidderNumber as varchar), Cast(AnniversaryDate as varchar), Cast(Created as varchar), Cast(AddressID as varchar), Cast(ShippingAddressID as varchar), Cast(ContactPhoneID as varchar), Cast(BidderTypeID as varchar), Cast(BidderStatusID as varchar), Cast(CustomerAccountID as varchar), Cast(ApprovedBy as varchar), Cast(UpdateEventID as varchar), Cast(PaymentMethodID as varchar), Comments)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Bidder_Inter]
	)
Select * From hashData
