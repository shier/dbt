
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReservationID] as varchar), Cast([ChargeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReservationCharge_Inter]
	)
Select * From hashData
