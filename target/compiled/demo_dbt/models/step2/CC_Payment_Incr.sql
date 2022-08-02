
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(ListingID as varchar), Cast(PaymentTypeID as varchar), Cast(CouponID as varchar), Cast(ChargeAmount as varchar), Cast(DiscountAmount as varchar), Cast(Approved as varchar), Cast(IsActive as varchar), FirstName, LastName, TelePhone, CustomerIP, LineItemDescription, TransactionID, AuthorizationCode, ResponseCode, Address1, Address2, City, State, ZipCode, Email, ResponseReasonCode, GatewayMessage)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Payment_Inter]
	)
Select * From hashData
