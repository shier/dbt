
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ColID as varchar), Cast(Is_udt as varchar), Cast(Is_xml as varchar), Cast(Is_Max as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticleColumns_Inter]
	)
Select * From hashData
