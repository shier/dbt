{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[ModifyDate],[IsActive],[PaymentTypeID],[CouponID],[ChargeAmount],[City],[Address1],[Address2],[State],[Approved],[AuthorizationCode],[ResponseCode],[ResponseReasonCode],[TransactionID],[ListingID],[FirstName],[LastName],[ZipCode],[Telephone],[Email],[CustomerIP],[LineItemDescription],[DiscountAmount],[GatewayMessage] 
From stg.[CC_Payment_Incr] 
Where [dbt_valid_to] is null