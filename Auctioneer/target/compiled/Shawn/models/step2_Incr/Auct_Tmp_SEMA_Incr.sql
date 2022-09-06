
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([First_Name], [Last_Name], [Email])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Tmp_SEMA_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_Tmp_SEMA_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
