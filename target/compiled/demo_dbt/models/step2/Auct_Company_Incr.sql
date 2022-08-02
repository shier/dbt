
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IndustryTypeID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), Name, Comments, URL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Company_Inter]
	)
Select * From hashData
