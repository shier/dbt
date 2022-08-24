
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Wrsp] as varchar), Cast([LotNumber] as varchar), Cast([Wrsh] as varchar), Cast([Wrsscm] as varchar), Cast([AuctionID] as varchar), [Comments], Cast([Created] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WorldRecords_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_WorldRecords_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
