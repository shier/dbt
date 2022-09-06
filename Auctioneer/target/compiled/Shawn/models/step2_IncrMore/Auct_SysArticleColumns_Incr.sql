
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ArtID] as varchar), Cast([ColID] as varchar), Cast([Is_udt] as varchar), Cast([Is_xml] as varchar), Cast([Is_Max] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticleColumns_InterView]
	)
Select * From hashData
