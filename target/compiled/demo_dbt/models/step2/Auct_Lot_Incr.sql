
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ConsignmentID as varchar), Cast(NavPullID as varchar), Cast(AddressID as varchar), Cast(PaymentMethodID as varchar), Cast(AmountApplied as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Lot_Inter]
	)
Select * From hashData
