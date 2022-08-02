
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(CompanyID as varchar), Cast(UpdateEventID as varchar), Name, DeptCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Organization_Inter]
	)
Select * From hashData
