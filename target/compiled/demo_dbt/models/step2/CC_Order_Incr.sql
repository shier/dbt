
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(UserID as varchar), Cast(PaymentID as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Order_Inter]
	)
Select * From hashData
