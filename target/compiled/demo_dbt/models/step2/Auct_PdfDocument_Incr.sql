
With hashData as (
		Select
			HASHBYTES('MD5', concat(FullyQualifiedClassName, FileNameMask)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PdfDocument_Inter]
	)
Select * From hashData
