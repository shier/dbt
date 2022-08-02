{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ZipCode],[Email],[TelePhone],[CustomerIP],[LineItemDescription],[TransactionID],[FirstName],[LastName],[Address1],[Address2],[City],[State],[AuthorizationCode],[ResponseCode],[ResponseReasonCode],[GatewayMessage],[DiscountAmount],[ChargeAmount],[IsActive],[Approved],[ListingID],[PaymentTypeID],[CouponID],[CreateDate],[ModifyDate] 
From stg.[CC_Payment_Incr] 
Where [dbt_valid_to] is null