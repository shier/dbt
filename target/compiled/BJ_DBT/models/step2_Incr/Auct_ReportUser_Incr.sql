
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReportID] as varchar), Cast([UserID] as varchar), [Title], [Category], [Description])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportUser_InterView]
	)
Select * From hashData
