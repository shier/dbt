
With hashData as (
		Select
			HASHBYTES('MD5', concat(Actionhtml, Name, CreateProcessor, GetProcessor, Cast(TaskCategoryID as varchar), Cast(IsTOpTask as varchar), Cast(DisplayOrder as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaskItemTypes_Inter]
	)
Select * From hashData
