
With hashData as (
		Select
			HASHBYTES('MD5', concat(MilestoneComments, Cast(ConsignmentID as varchar), Cast(UpdateEventID as varchar), Cast(MilestoneTime as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Milestones_Inter]
	)
Select * From hashData
