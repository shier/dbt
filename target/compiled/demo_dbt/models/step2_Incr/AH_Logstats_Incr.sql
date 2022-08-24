
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([FromDate] as varchar), Cast([RangeMinutes] as varchar), Cast([EntryCount] as varchar), Cast([IsArchived] as varchar), [Severity])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Logstats_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."AH_Logstats_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)