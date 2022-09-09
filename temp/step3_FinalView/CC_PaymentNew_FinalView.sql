{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[ModifyDate],[IsActive],[UserID],[PaymentTypeID],[CouponID],[OrderTotal],[OrderDiscount],[ChargeAmount],[Success],[CardName],[CardCity],[CardAddress],[CardState],[CardCountry],[Month],[Year],[CardLastFour],[Token],[PayerId],[IsApproved],[AuthorizationCode],[ResponseCode],[ResponseReasonCode],[TransactionID],[ErrorCode],[ErrorTransactionID],[PaymentStatus] 
From stg.[CC_PaymentNew_Incr] 
Where [dbt_valid_to] is null