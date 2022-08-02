
With hashData as (
		Select
			HASHBYTES('MD5', concat(AuctionID, DealerLicenseNumber, AuctionName, DateRange, FullStateName, Page1Footer)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignerApplication_Inter]
	)
Select * From hashData
