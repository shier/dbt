
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Abbreviation], [FullName], Cast([CountryID] as varchar), [Active])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_StateProvince_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_StateProvince_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
