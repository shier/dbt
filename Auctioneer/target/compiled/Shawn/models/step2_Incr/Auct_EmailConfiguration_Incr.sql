
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Host], [Domain], [UserName], [Password])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EmailConfiguration_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_EmailConfiguration_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
