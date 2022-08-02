
Select
	OrderTotal OrderTotal,
	OrderDiscount OrderDisCount,
	ChargeAmount ChargeAmount,
	cast(CustomerInfo as nvarchar(4000)) CustomerInfo,
	cast(PaymentInfo as nvarchar(4000)) PaymentInfo,
	cast(TransactionInfo as nvarchar(4000)) TransactionInfo,
	IsActive IsActive,
	Success Success,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	UserId UserID,
	PaymentTypeId PaymentTypeID,
	CouponId CouponID
From CC_PaymentNew_Raw