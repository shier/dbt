
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(OrderTotal as varchar), Cast(OrderDiscount as varchar), Cast(ChargeAmount as varchar), CustomerInfo, PaymentInfo, TransactionInfo, Cast(IsActive as varchar), Cast(Success as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(UserID as varchar), Cast(PaymentTypeID as varchar), Cast(CouponID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_PaymentNew_Inter]
	)
Select * From hashData
