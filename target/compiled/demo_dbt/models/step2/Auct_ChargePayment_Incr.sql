
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ConsignmentID as varchar), Cast(BidderID as varchar), Cast(VendorID as varchar), Cast(MediaID as varchar), Cast(SponsorID as varchar), Cast(ChargeID as varchar), Cast(RefundState as varchar), Cast(PaymentID as varchar), Cast(UpdateEventID as varchar), Cast(Amount as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargePayment_Inter]
	)
Select * From hashData
