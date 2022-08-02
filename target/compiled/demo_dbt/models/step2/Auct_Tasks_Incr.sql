
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Cast(TaskCategoryID as varchar), Cast(TaskCategoryLinkID as varchar), TaskCategoryLinkGUID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Tasks_Inter]
	)
Select * From hashData
