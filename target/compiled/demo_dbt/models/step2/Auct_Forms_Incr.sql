
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DepartmentID as varchar), Cast(Active as varchar), FileName, DisplayName, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Forms_Inter]
	)
Select * From hashData
