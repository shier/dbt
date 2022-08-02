
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(PaymentID as varchar), Cast(ChargeID as varchar), Cast(VendorAuctionID as varchar), Cast(UpdateEventID as varchar), Cast(SponsorAuctionID as varchar), Cast(Created as varchar), Cast(Amount as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DepartmentChargePayment_Inter]
	)
Select * From hashData
