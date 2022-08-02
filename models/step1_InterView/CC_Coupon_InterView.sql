{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[Amount] [Amount],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[StartDate] [StartDate],
	[EndDate] [EndDate],
	[CouponTypeId] [CouponTypeID],
	cast([Code] as nvarchar(4000)) [Code],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[CC_Coupon_Raw]
