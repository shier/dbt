
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([LoginprovIDEr], [ProvIDErKey], Cast([UserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UserLogins_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."AH_UserLogins_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
