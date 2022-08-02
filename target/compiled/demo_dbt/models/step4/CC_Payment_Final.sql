
Select
	[ID],[CreateDate],[ModifyDate],[ListingID],[PaymentTypeID],[CouponID],[ChargeAmount],[DiscountAmount],[Approved],[IsActive],[FirstName],[LastName],[TelePhone],[CustomerIP],[LineItemDescription],[TransactionID],[AuthorizationCode],[ResponseCode],[Address1],[Address2],[City],[State],[ZipCode],[Email],[ResponseReasonCode],[GatewayMessage] 
From stg.[CC_Payment_Incr] 
Where [dbt_valid_to] is null