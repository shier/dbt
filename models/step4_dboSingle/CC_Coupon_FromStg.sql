{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([Amount] as money) [AmountDollars],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([CouponTypeID] as int) [CouponTypeID],
	cast([Code] as nvarchar(40)) [Code],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_Coupon_FinalView]