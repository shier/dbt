create view "stg"."CC_PaymentNew_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[UserId] [UserID],
	[PaymentTypeId] [PaymentTypeID],
	[CouponId] [CouponID],
	[IsActive] [IsActive],
	[Success] [Success],
	[OrderTotal] [OrderTotal],
	[OrderDiscount] [OrderDiscount],
	[ChargeAmount] [ChargeAmount],
	cast([CustomerInfo] as nvarchar(4000)) [CustomerInfo],
	cast([PaymentInfo] as nvarchar(4000)) [PaymentInfo],
	cast([TransactionInfo] as nvarchar(4000)) [TransactionInfo]
From stg.[CC_PaymentNew_Raw]
