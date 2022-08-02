
With hashData as (
		Select
			HASHBYTES('MD5', concat(EventID, Cast(Active as varchar), Cast(ReportFormID as varchar), Cast(ReportID as varchar), Cast(PackageOrder as varchar), Cast(AuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Form_Inter]
	)
Select * From hashData
