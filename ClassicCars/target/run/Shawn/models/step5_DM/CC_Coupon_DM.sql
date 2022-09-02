
  
  if object_id ('"dbo"."CC_Coupon_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Coupon_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Coupon_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Coupon_DM__dbt_tmp"
    end


   EXEC('create view dbo.CC_Coupon_DM__dbt_tmp_temp_view as
    

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
    ');

  CREATE TABLE "dbo"."CC_Coupon_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Coupon_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Coupon_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Coupon_DM__dbt_tmp_temp_view"
    end


