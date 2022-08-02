
With hashData as (
		Select
			HASHBYTES('MD5', concat(FileToken, ChangeDescription, Cast(CreatedByUserID as varchar), Cast(FormID as varchar), Cast(CreatedDateTime as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_FormsHistory_Inter]
	)
Select * From hashData
