{{ config(materialized='table',schema='dbo')}}

SELECT
	c.[Id] AS [Coupon_Skey],
	c.[IsActive],
	cty.[Description] AS [CouponType],
	c.[StartDate],
	c.[EndDate],
	c.[Amount] AS [AmountDollars],
	c.[Code],
	c.[Description],
	c.[CreateDate] AS [CreatedDate],
	c.[ModifyDate] AS [ModifiedDate]
FROM [stg].[CC_Coupon_FinalView] AS c
LEFT JOIN [stg].[CC_CouponType_FinalView] as cty 
	ON cty.[Id] = c.[CouponTypeId]