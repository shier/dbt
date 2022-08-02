
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(Source as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), SentFrom, Replyto, IpAddress, Template, ContentFields, Meta, ReviewedBy, ReviewerAction, ReviewReason, ReviewInFormation)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_EmailReview_Inter]
	)
Select * From hashData
