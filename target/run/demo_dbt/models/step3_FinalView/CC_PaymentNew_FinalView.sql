create view "stg"."CC_PaymentNew_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[UserID],[PaymentTypeID],[CouponID],[IsActive],[Success],[OrderTotal],[OrderDiscount],[ChargeAmount],[CustomerInfo],[PaymentInfo],[TransactionInfo] 
From stg.[CC_PaymentNew_Incr] 
Where [dbt_valid_to] is null
