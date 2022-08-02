
With hashData as (
		Select
			HASHBYTES('MD5', concat(UncPath, FullPath, Cast(Expiration as varchar), Cast(Created as varchar), Cast(Active as varchar), Cast(CustomerAccountID as varchar), Cast(DocumentImageTypeID as varchar), Cast(AuctionID as varchar), Cast(CreatedByUserID as varchar), Cast(Height as varchar), Cast(Width as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DocumentImage_Inter]
	)
Select * From hashData
