
With hashData as (
		Select
			HASHBYTES('MD5', concat(Logo, Cast(CompanyID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionCompany_Inter]
	)
Select * From hashData
