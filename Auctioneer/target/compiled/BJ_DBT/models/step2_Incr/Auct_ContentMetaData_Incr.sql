
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ContentID] as varchar), Cast([MetaDataID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContentMetaData_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_ContentMetaData_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
