


WITH ConsignorFlag_CTE AS (
    SELECT 
        DISTINCT [CompanyId],
        1[ConsignorFlag]
    FROM [dbo].[ClassicCars_Listing_Ex]
)
-- , OrderItemFlag_CTE AS (
--     SELECT 
--         DISTINCT co.[Id] AS [CompanyId],
--         1[OrderItemFlag]
--     -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 28279, 0: 897317
--     FROM [dbo].[ClassicCars_OrderItem_Ex] orderitem
--     LEFT JOIN [dbo].[ClassicCars_Order_Ex] orders 
--         ON orderitem.[OrderId]=orders.[Id]
--     LEFT JOIN [dbo].[ClassicCars_PaymentNew_Ex] pymtnew
--         ON orders.[PaymentId]=pymtnew.[Id]
--     LEFT JOIN [dbo].[ClassicCars_User_Ex] users
--         ON pymtnew.[UserId]=users.[Id]
--     LEFT JOIN [dbo].[ClassicCars_Company_Ex] co 
--         ON users.[CompanyId]=co.[Id]  

--     -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 25444, 0: 900152
--     -- FROM [dbo].[ClassicCars_OrderItem_Ex] orderitem
--     -- LEFT JOIN [dbo].[ClassicCars_Order_Ex] orders 
--     --     ON orderitem.[OrderId]=orders.[Id]
--     -- LEFT JOIN [dbo].[ClassicCars_User_Ex] users
--     --     ON orders.[UserId]=users.[Id]
--     -- LEFT JOIN [dbo].[ClassicCars_Company_Ex] co 
--     --     ON users.[CompanyId]=co.[Id]
-- )
, OrderFlag_CTE AS (
    SELECT 
        DISTINCT co.[Id] AS [CompanyId],
        1[OrderFlag]
     -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 28279, 0: 897317
    FROM [dbo].[ClassicCars_Order_Ex] orders 
    LEFT JOIN [dbo].[ClassicCars_PaymentNew_Ex] pymtnew
        ON orders.[PaymentId]=pymtnew.[Id]
    LEFT JOIN [dbo].[ClassicCars_User_Ex] users
        ON pymtnew.[UserId]=users.[Id]
    LEFT JOIN [dbo].[ClassicCars_Company_Ex] co 
        ON users.[CompanyId]=co.[Id]  

    -- -- DIFFERENT APPROACH WILL LEAD TO DIFFERENT RESULT -- 1: 25444, 0: 900152
    -- FROM [dbo].[ClassicCars_Order_Ex] orders 
    -- LEFT JOIN [dbo].[ClassicCars_User_Ex] users
    --     ON orders.[UserId]=users.[Id]
    -- LEFT JOIN [dbo].[ClassicCars_Company_Ex] co 
    --     ON users.[CompanyId]=co.[Id]   
)
, PaymentFlag_merged_CTE AS (
    SELECT 
        DISTINCT co.[Id] AS [CompanyId], 
        1[PaymentFlag]
    FROM [dbo].[ClassicCars_Payment_Ex] pymt 
    LEFT JOIN [dbo].[ClassicCars_Company_Ex] co 
        ON pymt.[Email]=co.[Email]
    UNION
    SELECT 
        DISTINCT co.[Id] AS [CompanyId], 
        1[PaymentFlag]
    FROM [dbo].[ClassicCars_PaymentNew_Ex] AS pymtnew
    LEFT JOIN [dbo].[ClassicCars_User_Ex] AS users
        ON pymtnew.[UserId]=users.[Id]
    LEFT JOIN [dbo].[ClassicCars_Company_Ex] AS co
        ON users.[CompanyId]=co.[Id]
)
, Seller_CTE AS (
    SELECT 
        co.[Id], 
        [CompanyName], 
        -- [CompanyTypeId], 
        coty.[Description] AS [CompanyType], 
        CASE WHEN coty.[Description] NOT IN ('PrivateSeller') THEN 1
        ELSE 0
        END AS [CompanyRepresentativeFlag], 
        [IsActive], 
        [CompanyDescription], 
        [AboutUs], 
        -- [ListingPaymentType], 
        pymtty.[Description] AS [ListingPaymentType], 
        [Email], 
        [Telephone], 
        NULLIF(TRIM(CONCAT([Address1], ' ', [Address2])), '') AS [Address], 
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
    FROM [dbo].[ClassicCars_Company_Ex] AS co 
    -- FOR [ListingPaymentType]
    LEFT JOIN [dbo].[ClassicCars_ListingPaymentType_Ex] AS pymtty
        ON co.[ListingPaymentType]=pymtty.[Id]
    -- FOR [CompanyType]
    LEFT JOIN [dbo].[ClassicCars_CompanyType_Ex] AS coty
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