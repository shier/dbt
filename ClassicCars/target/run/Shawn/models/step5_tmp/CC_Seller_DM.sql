
  
  if object_id ('"dbo"."CC_Seller_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Seller_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Seller_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Seller_DM__dbt_tmp"
    end


   EXEC('create view dbo.CC_Seller_DM__dbt_tmp_temp_view as
    


WITH ConsignorFlag_CTE AS (
    SELECT 
        DISTINCT [CompanyId],
        1[ConsignorFlag]
    FROM [stg].[CC_Listing_FinalView]
)
-- , OrderItemFlag_CTE AS (
--     SELECT 
--         DISTINCT co.[Id] AS [CompanyId],
--         1[OrderItemFlag]
--     -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 28279, 0: 897317
--     FROM [stg].[CC_OrderItem_FinalView] orderitem
--     LEFT JOIN [stg].[CC_Order_FinalView] orders 
--         ON orderitem.[OrderId]=orders.[Id]
--     LEFT JOIN [stg].[CC_PaymentNew_FinalView] pymtnew
--         ON orders.[PaymentId]=pymtnew.[Id]
--     LEFT JOIN [stg].[CC_User_FinalView] users
--         ON pymtnew.[UserId]=users.[Id]
--     LEFT JOIN [stg].[CC_Company_FinalView] co 
--         ON users.[CompanyId]=co.[Id]  

--     -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 25444, 0: 900152
--     -- FROM [stg].[CC_OrderItem_FinalView] orderitem
--     -- LEFT JOIN [stg].[CC_Order_FinalView] orders 
--     --     ON orderitem.[OrderId]=orders.[Id]
--     -- LEFT JOIN [stg].[CC_User_FinalView] users
--     --     ON orders.[UserId]=users.[Id]
--     -- LEFT JOIN [stg].[CC_Company_FinalView] co 
--     --     ON users.[CompanyId]=co.[Id]
-- )
, OrderFlag_CTE AS (
    SELECT 
        DISTINCT co.[Id] AS [CompanyId],
        1[OrderFlag]
     -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 28279, 0: 897317
    FROM [stg].[CC_Order_FinalView] orders 
    LEFT JOIN [stg].[CC_PaymentNew_FinalView] pymtnew
        ON orders.[PaymentId]=pymtnew.[Id]
    LEFT JOIN [stg].[CC_User_FinalView] users
        ON pymtnew.[UserId]=users.[Id]
    LEFT JOIN [stg].[CC_Company_FinalView] co 
        ON users.[CompanyId]=co.[Id]  

    -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 25444, 0: 900152
    -- FROM [stg].[CC_Order_FinalView] orders 
    -- LEFT JOIN [stg].[CC_User_FinalView] users
    --     ON orders.[UserId]=users.[Id]
    -- LEFT JOIN [stg].[CC_Company_FinalView] co 
    --     ON users.[CompanyId]=co.[Id]   
)
, PaymentFlag_merged_CTE AS (
    SELECT 
        DISTINCT co.[Id] AS [CompanyId], 
        1[PaymentFlag]
    FROM [stg].[CC_Payment_FinalView] pymt 
    LEFT JOIN [stg].[CC_Company_FinalView] co 
        ON pymt.[Email]=co.[Email]
    UNION
    SELECT 
        DISTINCT co.[Id] AS [CompanyId], 
        1[PaymentFlag]
    FROM [stg].[CC_PaymentNew_FinalView] AS pymtnew
    LEFT JOIN [stg].[CC_User_FinalView] AS users
        ON pymtnew.[UserId]=users.[Id]
    LEFT JOIN [stg].[CC_Company_FinalView] AS co
        ON users.[CompanyId]=co.[Id]
)
, Seller_CTE AS (
    SELECT 
        co.[Id], 
        [CompanyName], 
        -- [CompanyTypeId], 
        coty.[Description] AS [CompanyType], 
        CASE WHEN coty.[Description] NOT IN (''PrivateSeller'') THEN 1
        ELSE 0
        END AS [CompanyRepresentativeFlag], 
        [IsActive], 
        [CompanyDescription], 
        [AboutUs], 
        -- [ListingPaymentType], 
        pymtty.[Description] AS [ListingPaymentType], 
        [Email], 
        [Telephone], 
        NULLIF(TRIM(CONCAT([Address1], '' '', [Address2])), '''') AS [Address], 
        [City], 
        [State], 
        [ZipCode], 
        [Country], 
        [Latitude], 
        [Longitude], 
        ISNULL(listing.[ConsignorFlag], 0) AS [ConsignorFlag], 
        -- ISNULL(orderitem.[OrderItemFlag], 0) AS [OrderItemFlag], 
        ISNULL(orders.[OrderFlag], 0) AS [OrderFlag], 
        ISNULL(pymt.[PaymentFlag], 0) AS [PaymentFlag], 
        [LogoUrl], 
        [CompanyUrl], 
        [ImageSortType], 
        [MaxActiveListings], 
        [MaxFeaturedListings], 
        [OptInThirdParty], 
        [OverrideMaxActiveAlertCount], 
        [DisableImmediateSavedSearches], 
        [DisableDailySavedSearches], 
        [DisableFirstAlerts], 
        [BuyerInquiry_IncludeADF], 
        [BuyerInquiry_ADFOptionID], 
        [BuyerInquiryEmailAddress], 
        [DashboardLock], 
        [WhitelistedForAHNominations], 
        [OptOutAHNominationAlerts], 
        [BlacklistedForAHNominations], 
        [CreateDate], 
        [ModifyDate]
    FROM [stg].[CC_Company_FinalView] AS co 
    -- FOR [ListingPaymentType]
    LEFT JOIN [stg].[CC_ListingPaymentType_FinalView] AS pymtty
        ON co.[ListingPaymentType]=pymtty.[Id]
    -- FOR [CompanyType]
    LEFT JOIN [stg].[CC_CompanyType_FinalView] AS coty
        ON co.[CompanyTypeId]=coty.[Id]
    -- FOR [ConsignorFlag]
    LEFT JOIN ConsignorFlag_CTE AS listing
        ON co.[Id]=listing.[CompanyId]
    -- -- FOR [OrderItemFlag]
    -- LEFT JOIN OrderItemFlag_CTE AS orderitem 
    --     ON co.[Id]=orderitem.[CompanyId]
    -- FOR [OrderFlag]
    LEFT JOIN OrderFlag_CTE AS orders 
        ON co.[Id]=orders.[CompanyId]
    -- FOR [PaymentFlag]
    LEFT JOIN PaymentFlag_merged_CTE AS pymt 
        ON co.[Id]=pymt.[CompanyId]
)

SELECT
	[Id] AS [Seller_Skey],
	[CompanyName],
	[CompanyType],
	[CompanyRepresentativeFlag],
	[IsActive],
	[CompanyDescription],
	[AboutUs],
	[ListingPaymentType],
	[Email],
	[Telephone] AS [PhoneNumber],
	[Address],
	[City],
	[State],
	[ZipCode] AS [PostalCode],
	[Country],
	[Latitude],
	[Longitude],
	[ConsignorFlag],
	[OrderFlag],
	[PaymentFlag],
	[LogoUrl] AS [LogoURL],
	[CompanyUrl] AS [CompanyURL],
	[ImageSortType],
	[MaxActiveListings],
	[MaxFeaturedListings],
	[OptInThirdParty],
	[OverrideMaxActiveAlertCount],
	[DisableImmediateSavedSearches],
	[DisableDailySavedSearches],
	[DisableFirstAlerts],
	[BuyerInquiry_IncludeADF],
	[BuyerInquiry_ADFOptionID],
	[BuyerInquiryEmailAddress],
	[DashboardLock],
	[WhitelistedForAHNominations],
	[OptOutAHNominationAlerts],
	[BlacklistedForAHNominations],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate]
FROM Seller_CTE
    ');

  CREATE TABLE "dbo"."CC_Seller_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Seller_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Seller_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Seller_DM__dbt_tmp_temp_view"
    end


