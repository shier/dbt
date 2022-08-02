
With hashData as (
		Select
			HASHBYTES('MD5', concat(UncPath, FileName, ArchiveUncPath, Cast(LotNumber as varchar), Cast(AuctionID as varchar), Cast(CapturedTime as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DocumentationFiles_Inter]
	)
Select * From hashData
