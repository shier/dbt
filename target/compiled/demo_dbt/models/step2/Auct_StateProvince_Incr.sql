
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Abbreviation], [FullName], Cast([CountryID] as varchar), [Active])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_StateProvince_Inter]
	)
Select * From hashData
