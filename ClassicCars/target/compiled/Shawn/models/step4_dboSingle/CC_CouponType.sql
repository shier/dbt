
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([ID] as int) [Id] 
From stg.[CC_CouponType_FinalView]