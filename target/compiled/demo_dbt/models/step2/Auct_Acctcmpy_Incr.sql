
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(AuctionID as varchar), Cast(CompanyID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Acctcmpy_Inter]
	)
Select * From hashData
