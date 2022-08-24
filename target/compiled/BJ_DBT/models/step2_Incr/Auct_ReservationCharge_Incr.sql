
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReservationID] as varchar), Cast([ChargeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReservationCharge_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_ReservationCharge_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
