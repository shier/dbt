
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DynamicPropertyID] as varchar), Cast([SiteTypeID] as varchar), Cast([IsRequired] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteTypeProperty_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_SiteTypeProperty_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
