
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(TimeOut as varchar), Cast(Sent_Date as varchar), Cast(Modified_Date as varchar), Publication, Progress_Phase, Cast(Phase_Timed_Out as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConflictDetectionConfigRequest_Inter]
	)
Select * From hashData
