
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([SiteID] as varchar), Cast([DynamicPropertyID] as varchar), [Value])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteProperty_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_SiteProperty_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
