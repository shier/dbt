
With hashData as (
		Select
			HASHBYTES('MD5', concat(EmailAddress, MandrillID, MandrillStatus, MandrillrejectReason, Cast(ListingID as varchar), Cast(Deactivatestage as varchar), Cast(DateSentUTC as varchar), Cast(ListingModifyDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Emailaudit_Inter]
	)
Select * From hashData
