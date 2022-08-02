
With hashData as (
		Select
			HASHBYTES('MD5', concat(PackageTypeName, TrackingNumber, Note, Cast(PackageTypeID as varchar), Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(PackageCarrierID as varchar), Cast(DateCreated as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Package_Inter]
	)
Select * From hashData
