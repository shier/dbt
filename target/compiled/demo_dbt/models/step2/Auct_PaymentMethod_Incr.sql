
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(MinimumDepositValue as varchar), Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(ProcessorID as varchar), Cast(WebDisplayBit as varchar), VendorDisplay, ConsignDisplay, MediaDisplay, SponsorDisplay, BidderDisplay, LotDisplay, Name, BidDisplay, WebDisplayName, WebDescription, BCPaymentCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PaymentMethod_Inter]
	)
Select * From hashData
