
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Wrsp] as varchar), Cast([LotNumber] as varchar), Cast([Wrsh] as varchar), Cast([Wrsscm] as varchar), Cast([AuctionID] as varchar), [Comments], Cast([Created] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WorldRecords_Inter]
	)
Select * From hashData
