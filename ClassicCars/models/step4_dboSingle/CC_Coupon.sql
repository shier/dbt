{{ config(materialized='table',schema='dbo')}}
Select
	cast([IsActive] as bit) [IsActive],
	cast([Amount] as money) [Amount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([ID] as int) [Id],
	cast([CouponTypeID] as int) [CouponTypeId],
	cast([Code] as nvarchar(40)) [Code],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_Coupon_FinalView]