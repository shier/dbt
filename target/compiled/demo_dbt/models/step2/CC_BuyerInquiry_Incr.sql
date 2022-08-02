
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(EmailSentUTC as varchar), Cast(WantsrrcInfo as varchar), Cast(IsActive as varchar), Cast(EmailProcessed as varchar), Cast(CopyProcessed as varchar), Cast(FollowupProcessed as varchar), Cast(ListingID as varchar), Cast(EmailFilterCodeID as varchar), Cast(WantsNewsLetter as varchar), UserAgent, Browser, FirstName, LastName, Email, Phone, Message, IpAddress)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_BuyerInquiry_Inter]
	)
Select * From hashData
