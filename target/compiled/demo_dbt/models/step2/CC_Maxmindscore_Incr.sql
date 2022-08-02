
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(Minfraudscore as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(PaymentID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Maxmindscore_Inter]
	)
Select * From hashData
