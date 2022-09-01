{{ config(materialized='table',schema='dbo')}}

SELECT
	c.[Id] as [Coupon_Skey],
	c.[IsActive],
	cty.[Description] AS [CouponType],
	c.[StartDate],
	c.[EndDate],
	c.[Amount] as [AmountDollars],
	c.[Code],
	c.[Description],
    c.[CreateDate],
	c.[ModifyDate]
FROM [stg].[CC_Coupon_FinalView] AS c 
LEFT JOIN [stg].[CC_CouponType_FinalView] as cty 
	ON cty.[Id] = c.[CouponTypeId]