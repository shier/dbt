
Select
	cast([Description] as nvarchar(4000)) [CouponTypeDescription],
	cast([ID] as int) [ID] 
From stg.[CC_CouponType_FinalView]