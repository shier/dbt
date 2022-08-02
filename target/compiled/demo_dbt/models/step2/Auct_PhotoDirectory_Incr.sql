
With hashData as (
		Select
			HASHBYTES('MD5', concat(UncPath, TypeName, Cast(Active as varchar), Cast(DirectoryTypeID as varchar), Cast(AuctionID as varchar), Cast(IsCDN as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PhotoDirectory_Inter]
	)
Select * From hashData
