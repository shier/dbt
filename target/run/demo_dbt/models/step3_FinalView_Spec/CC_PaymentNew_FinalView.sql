create view "stg"."CC_PaymentNew_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[UserID],[PaymentTypeID],[CouponID],[IsActive],[Success],[OrderTotal],[OrderDiscount],[ChargeAmount],
	[CardName],[CardCity],[CardAddress],[CardState],[CardCountry],[Month],[Year],[CardLastFour],[Token],[PayerId],
	[IsApproved],[AuthorizationCode],[ResponseCode],[ResponseReasonCode],[TransactionID],[ErrorCode],[ErrorTransactionID],[PaymentStatus]
From stg.[CC_PaymentNew_Incr] 
Where [dbt_valid_to] is null
