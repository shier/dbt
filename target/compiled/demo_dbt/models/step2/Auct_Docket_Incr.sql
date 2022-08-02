
With hashData as (
		Select
			HASHBYTES('MD5', concat(LotStatus, Cast(ConsignmentID as varchar), Cast(UpdateEventID as varchar), Cast(LaneNumber as varchar), Cast(TargetTime as varchar), Cast(ActualTime as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Docket_Inter]
	)
Select * From hashData
