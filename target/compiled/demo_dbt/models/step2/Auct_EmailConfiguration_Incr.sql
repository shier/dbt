
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Host], [Domain], [UserName], [Password])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EmailConfiguration_Inter]
	)
Select * From hashData
