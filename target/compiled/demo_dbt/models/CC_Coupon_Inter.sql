
Select
	StartDate StartDate,
	EndDate EndDate,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	CouponTypeId CouponTypeID,
	Amount Amount,
	cast(Description as nvarchar(4000)) Description,
	cast(Code as nvarchar(4000)) Code,
	IsActive IsActive
From CC_Coupon_Raw