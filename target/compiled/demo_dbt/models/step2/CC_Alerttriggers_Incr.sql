
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ListingID as varchar), Cast(AlerttriggerReasonID as varchar), Cast(CreateDateUTC as varchar), Cast(ImmediateDateProcessedUTC as varchar), Cast(DailyDateProcessedUTC as varchar), Cast(FraudDateProcessedUTC as varchar), Oldvalue, Newvalue)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Alerttriggers_Inter]
	)
Select * From hashData
