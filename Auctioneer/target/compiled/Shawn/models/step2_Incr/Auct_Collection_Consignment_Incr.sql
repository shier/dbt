
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CollectionID] as varchar), Cast([ConsignmentID] as varchar), Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Collection_Consignment_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_Collection_Consignment_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
