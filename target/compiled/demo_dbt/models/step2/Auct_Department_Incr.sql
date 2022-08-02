
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Name, BCDepartmentCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Department_Inter]
	)
Select * From hashData
