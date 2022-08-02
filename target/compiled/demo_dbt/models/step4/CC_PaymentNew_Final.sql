
Select
	[ID],[OrderTotal],[OrderDiscount],[ChargeAmount],[CustomerInfo],[PaymentInfo],[TransactionInfo],[IsActive],[Success],[CreateDate],[ModifyDate],[UserID],[PaymentTypeID],[CouponID] 
From stg.[CC_PaymentNew_Incr] 
Where [dbt_valid_to] is null