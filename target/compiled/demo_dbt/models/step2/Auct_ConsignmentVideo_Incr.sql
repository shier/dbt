
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DateCreated as varchar), Cast(ConsignmentID as varchar), Cast(DisplayOrder as varchar), Cast(Active as varchar), URI, Name, EmbedURI, Code, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignmentVideo_Inter]
	)
Select * From hashData
