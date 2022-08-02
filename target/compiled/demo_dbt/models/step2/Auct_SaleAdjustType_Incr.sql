
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, ProcessorName, HtmlDescription, ClassName, Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SaleAdjustType_Inter]
	)
Select * From hashData
