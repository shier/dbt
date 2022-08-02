{{ config(materialized='table',schema='dbo')}}
SELECT
	cast(C_CT.[Description] as nvarchar(4000)) [CouponTypeDescription],
	C_C.[ID],
	C_C.[IsActive],
	cast(C_C.[Amount] as money) [AmountDollars],
	cast(C_C.[CreateDate] as datetime) [Created],
	cast(C_C.[ModifyDate] as datetime) [ModifiedDate],
	cast(C_C.[StartDate] as datetime) [StartDate],
	cast(C_C.[EndDate] as datetime) [EndDate],
	C_C.[CouponTypeID],
	cast(C_C.[Code] as nvarchar(40)) [Code],
	cast(C_C.[Description] as nvarchar(4000)) [Description]
FROM [stg].[CC_Coupon_FinalView] AS C_C 
JOIN [stg].[CC_CouponType_FinalView] AS C_CT ON C_CT.[ID]=C_C.[CouponTypeID]
