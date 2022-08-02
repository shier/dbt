
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), BusinessUnit, City, State, County, BusinessUnitDisplay)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBusinessUnit_Inter]
	)
Select * From hashData
