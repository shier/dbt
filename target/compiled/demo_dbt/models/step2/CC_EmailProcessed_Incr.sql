
With hashData as (
		Select
			HASHBYTES('MD5', concat(SentFrom, Replyto, IpAddress, Template, Fields, Meta, Response, MandrillID, MandrillrejectReason, SuBJect, Cast(ResponseCode as varchar), Cast(ForeignID as varchar), Cast(DateSent as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_EmailProcessed_Inter]
	)
Select * From hashData
