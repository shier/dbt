
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreatedByUserID as varchar), Cast(AssignedByUserID as varchar), Cast(TaskItemTypeID as varchar), Cast(TaskID as varchar), Cast(CompletedByUserID as varchar), Cast(Created as varchar), Cast(Completed as varchar), Message, NavigateURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaskItems_Inter]
	)
Select * From hashData
