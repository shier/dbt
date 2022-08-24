
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([SearchHistoryFK] as varchar), Cast([ListingFK] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SearchHistory_Listings_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."CC_SearchHistory_Listings_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
