
With hashData as (
		Select
			HASHBYTES('MD5', concat(FormName, FormKey, FilePath, Cast(ConsignmentID as varchar), Cast(UserID as varchar), Cast(SignStartedDateTime as varchar), Cast(SignfinishedDateTime as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConsignmentForms_Inter]
	)
Select * From hashData
