
With hashData as (
		Select
			HASHBYTES('MD5', concat(ReceiverEmail, Message, IpAddress, Browser, UserAgent, SEnderName, SEnderEmail, ReceiverName, Cast(EmailFilterCodeID as varchar), Cast(ListingID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), Cast(SEnderwantsCopy as varchar), Cast(WantsNewsLetter as varchar), Cast(WantsrrcInfo as varchar), Cast(EmailProcessed as varchar), Cast(CopyProcessed as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SEndtofriend_Inter]
	)
Select * From hashData
