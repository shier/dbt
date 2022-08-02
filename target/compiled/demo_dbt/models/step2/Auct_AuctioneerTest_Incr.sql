
With hashData as (
		Select
			HASHBYTES('MD5', concat(Comments, CompletionDate, PostDate, PostUser, Function, Operations, Observations)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctioneerTest_Inter]
	)
Select * From hashData
