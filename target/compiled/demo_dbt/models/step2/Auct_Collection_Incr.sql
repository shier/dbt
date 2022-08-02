
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Description, Cast(AuctionID as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Collection_Inter]
	)
Select * From hashData
