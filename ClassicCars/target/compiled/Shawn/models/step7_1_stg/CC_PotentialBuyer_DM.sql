

WITH Company_CTE AS (
    SELECT 
        company.[Id] AS [CompanyID],
        company.[CompanyName],
        -- company.[CompanyTypeId],
        companyty.[Description] AS [CompanyType],
        company.[CompanyDescription],
        company.[AboutUs],
        company.[IsActive] AS [IsActiveCompany],
        company.[Telephone] AS [PhoneNumber],
        CAST(LOWER(TRIM(company.[Email])) AS NVARCHAR(320)) AS [CompanyEmail],
        -- NULL[CompanyEmailConfirmed], 
        NULLIF(TRIM(CONCAT(company.[Address1], ' ', company.[Address2])), '') AS [Address],
        company.[City],
        company.[State],
        company.[ZipCode] AS [PostalCode],
        company.[Country],
        company.[Latitude],
        company.[Longitude],
        company.[MaxActiveListings],
        company.[MaxFeaturedListings],
        company.[OptInThirdParty],
        company.[LogoUrl] AS [LogoURL],
        company.[CompanyUrl] AS [CompanyURL],
        company.[ImageSortType],
        -- company.[ListingPaymentType] AS [ListingPaymentTypeID],
        listingpymtty.[Description] AS [ListingPaymentType],
        company.[OverrideMaxActiveAlertCount],
        company.[DisableImmediateSavedSearches],
        company.[DisableDailySavedSearches],
        company.[DisableFirstAlerts],
        company.[BuyerInquiry_IncludeADF],
        company.[BuyerInquiry_ADFOptionID],
        company.[BuyerInquiryEmailAddress] AS [BuyerInquiryEmail],
        company.[DashboardLock],
        company.[WhitelistedForAHNominations],
        company.[OptOutAHNominationAlerts],
        company.[BlacklistedForAHNominations], 
        company.[CreateDate] AS [CompanyCreated],
        company.[ModifyDate] AS [CompanyModifiedDate]
    FROM [stg].[CC_Company_FinalView] company 
    LEFT JOIN [stg].[CC_CompanyType_FinalView] companyty
        ON company.[CompanyTypeId]=companyty.[Id]
    LEFT JOIN [stg].[CC_ListingPaymentType_FinalView] listingpymtty
        ON company.[ListingPaymentType]=listingpymtty.[Id]
)
, User_CTE AS (
    SELECT
        [Id] AS [UserID],
        [CompanyId] AS [CompanyID],
        NULLIF(TRIM(CONCAT(UPPER([FirstName]), ' ', UPPER([LastName]))), '') AS [Name],
        [IsActive] AS [IsActiveUser],
        [SessionToken],
        CAST(LOWER(TRIM([Email])) AS NVARCHAR(320)) AS [UserEmail],
        [EmailConfirmed] AS [UserEmailConfirmed],
        [DataTokenId] AS [DataTokenID],
        [UserCreationSourceID],
        [PasswordResetDate],
        [UseTwoFactor],
        [TwoFactorToken],
        [TwoFactorResetDate],
        [CreateDate] AS [UserCreated],
        [ModifyDate] AS [UserModifiedDate]
    FROM [stg].[CC_User_FinalView]
)
, CompanyUser_CTE1 AS (
    SELECT 
        [UserID],
        [Name],
        [IsActiveUser],
        [CompanyID],
        [CompanyName],
        [CompanyType], 
        [CompanyDescription],
        [AboutUs],
        [IsActiveCompany],
        [PhoneNumber],
        [Address],
        [City],
        [State],
        [PostalCode],
        [Country],
        [Latitude],
        [Longitude], 
        [MaxActiveListings],
        [MaxFeaturedListings],
        [OptInThirdParty],
        [LogoURL],
        [CompanyURL],
        [ImageSortType],
        [ListingPaymentType], 
        [OverrideMaxActiveAlertCount],
        [DisableImmediateSavedSearches],
        [DisableDailySavedSearches],
        [DisableFirstAlerts],
        [BuyerInquiry_IncludeADF],
        [BuyerInquiry_ADFOptionID],
        [BuyerInquiryEmail],
        [DashboardLock],
        [WhitelistedForAHNominations],
        [OptOutAHNominationAlerts],
        [BlacklistedForAHNominations], 
        [SessionToken],
        [DataTokenID],
        [UserCreationSourceID],
        [PasswordResetDate],
        [UseTwoFactor],
        [TwoFactorToken],
        [TwoFactorResetDate],
        [Email],
        [EmailConfirmed],
        [DataSource],
        [CompanyCreated], 
        [CompanyModifiedDate], 
        [UserCreated], 
        [UserModifiedDate]
    FROM (
        SELECT 
            [UserID],
            [Name],
            [IsActiveUser],
            [CompanyID],
            [CompanyName],
            [CompanyType], 
            [CompanyDescription],
            [AboutUs],
            [IsActiveCompany],
            [PhoneNumber],
            [Address],
            [City],
            [State],
            [PostalCode],
            [Country],
            [Latitude],
            [Longitude], 
            [MaxActiveListings],
            [MaxFeaturedListings],
            [OptInThirdParty],
            [LogoURL],
            [CompanyURL],
            [ImageSortType],
            [ListingPaymentType], 
            [OverrideMaxActiveAlertCount],
            [DisableImmediateSavedSearches],
            [DisableDailySavedSearches],
            [DisableFirstAlerts],
            [BuyerInquiry_IncludeADF],
            [BuyerInquiry_ADFOptionID],
            [BuyerInquiryEmail],
            [DashboardLock],
            [WhitelistedForAHNominations],
            [OptOutAHNominationAlerts],
            [BlacklistedForAHNominations], 
            [SessionToken],
            [DataTokenID],
            [UserCreationSourceID],
            [PasswordResetDate],
            [UseTwoFactor],
            [TwoFactorToken],
            [TwoFactorResetDate],
            [Email],
            CASE WHEN [DataSource]='UserEmail' THEN [UserEmailConfirmed]
                WHEN [DataSource]='CompanyEmail' THEN NULL
            END AS [EmailConfirmed],
            [DataSource],
            [CompanyCreated], 
            [CompanyModifiedDate], 
            [UserCreated], 
            [UserModifiedDate],
            ROW_NUMBER() OVER(
                PARTITION BY [UserID], [Name], [IsActiveUser], [CompanyID], [CompanyName], [CompanyType], [CompanyDescription], [AboutUs], [IsActiveCompany], [PhoneNumber], [Address], [City], [State], [PostalCode], [Country], [Latitude], [Longitude], [MaxActiveListings], [MaxFeaturedListings], [OptInThirdParty], [LogoURL], [CompanyURL], [ImageSortType], [ListingPaymentType], [OverrideMaxActiveAlertCount], [DisableImmediateSavedSearches], [DisableDailySavedSearches], [DisableFirstAlerts], [BuyerInquiry_IncludeADF], [BuyerInquiry_ADFOptionID], [BuyerInquiryEmail], [DashboardLock], [WhitelistedForAHNominations], [OptOutAHNominationAlerts], [BlacklistedForAHNominations], [SessionToken], [DataTokenID], [UserCreationSourceID], [PasswordResetDate], [UseTwoFactor], [TwoFactorToken], [TwoFactorResetDate], [Email], [CompanyCreated], [CompanyModifiedDate], [UserCreated], [UserModifiedDate]
                ORDER BY [UserID], [Name], [IsActiveUser], [CompanyID], [CompanyName], [CompanyType], [CompanyDescription], [AboutUs], [IsActiveCompany], [PhoneNumber], [Address], [City], [State], [PostalCode], [Country], [Latitude], [Longitude], [MaxActiveListings], [MaxFeaturedListings], [OptInThirdParty], [LogoURL], [CompanyURL], [ImageSortType], [ListingPaymentType], [OverrideMaxActiveAlertCount], [DisableImmediateSavedSearches], [DisableDailySavedSearches], [DisableFirstAlerts], [BuyerInquiry_IncludeADF], [BuyerInquiry_ADFOptionID], [BuyerInquiryEmail], [DashboardLock], [WhitelistedForAHNominations], [OptOutAHNominationAlerts], [BlacklistedForAHNominations], [SessionToken], [DataTokenID], [UserCreationSourceID], [PasswordResetDate], [UseTwoFactor], [TwoFactorToken], [TwoFactorResetDate], [Email], CASE WHEN [DataSource]='UserEmail' THEN [UserEmailConfirmed] WHEN [DataSource]='CompanyEmail' THEN NULL END DESC, [CompanyCreated], [CompanyModifiedDate], [UserCreated], [UserModifiedDate]
            ) AS [RowNumber]
        FROM (
            SELECT 
                users.[UserID],
                users.[Name],
                users.[IsActiveUser],
                company.[CompanyID],
                company.[CompanyName],
                company.[CompanyType],
                company.[CompanyDescription],
                company.[AboutUs],
                company.[IsActiveCompany],
                company.[PhoneNumber],
                company.[Address],
                company.[City],
                company.[State],
                company.[PostalCode],
                company.[Country],
                company.[Latitude],
                company.[Longitude],
                company.[MaxActiveListings],
                company.[MaxFeaturedListings],
                company.[OptInThirdParty],
                company.[LogoURL],
                company.[CompanyURL],
                company.[ImageSortType],
                company.[ListingPaymentType],
                company.[OverrideMaxActiveAlertCount],
                company.[DisableImmediateSavedSearches],
                company.[DisableDailySavedSearches],
                company.[DisableFirstAlerts],
                company.[BuyerInquiry_IncludeADF],
                company.[BuyerInquiry_ADFOptionID],
                company.[BuyerInquiryEmail],
                company.[DashboardLock],
                company.[WhitelistedForAHNominations],
                company.[OptOutAHNominationAlerts],
                company.[BlacklistedForAHNominations], 
                users.[SessionToken],
                users.[DataTokenID],
                users.[UserCreationSourceID],
                users.[PasswordResetDate],
                users.[UseTwoFactor],
                users.[TwoFactorToken],
                users.[TwoFactorResetDate],
                company.[CompanyEmail],
                -- company.[CompanyEmailConfirmed], 
                company.[CompanyCreated], 
                company.[CompanyModifiedDate], 
                users.[UserEmail],
                users.[UserEmailConfirmed], 
                users.[UserCreated], 
                users.[UserModifiedDate]
            FROM User_CTE users 
            LEFT JOIN Company_CTE company 
                ON company.[CompanyID]=users.[CompanyID]
            ) AS SRC1
            UNPIVOT (
                [Email] FOR [DataSource] IN ([CompanyEmail], [UserEmail])
            ) AS UNPVT1
        ) AS temp1
    WHERE [RowNumber]=1
)
, CompanyUser_NumOfCnts_CTE AS (
    SELECT
        [CompanyID],
        [UserID], 
        [NumOfRows], 
        CASE WHEN [NumOfRows]=1 THEN 'One'
        ELSE 'Multiple'
        END AS [NumOfCnts]
    FROM (
        SELECT 
            [CompanyID],
            [UserID], 
            COUNT(*) AS [NumOfRows]
        FROM CompanyUser_CTE1
        GROUP BY [CompanyID], [UserID]
        ) AS temp1
)
-- SELECT * FROM CompanyUser_NumOfCnts_CTE ORDER BY [NumOfRows] DESC, [CompanyID], [UserID]; -- MAX(NumOfRows)=2
-- SELECT * FROM CompanyUser_NumOfCnts_CTE ORDER BY [CompanyID], [UserID];
, CompanyUser_CTE2 AS (
    SELECT 
        [UserID],
        [Name],
        [IsActiveUser],
        [CompanyID],
        [CompanyName],
        [CompanyType], 
        [CompanyDescription],
        [AboutUs],
        [IsActiveCompany],
        [PhoneNumber],
        [Address],
        [City],
        [State],
        [PostalCode],
        [Country],
        [Latitude],
        [Longitude], 
        [MaxActiveListings],
        [MaxFeaturedListings],
        [OptInThirdParty],
        [LogoURL],
        [CompanyURL],
        [ImageSortType],
        [ListingPaymentType], 
        [OverrideMaxActiveAlertCount],
        [DisableImmediateSavedSearches],
        [DisableDailySavedSearches],
        [DisableFirstAlerts],
        [BuyerInquiry_IncludeADF],
        [BuyerInquiry_ADFOptionID],
        [BuyerInquiryEmail],
        [DashboardLock],
        [WhitelistedForAHNominations],
        [OptOutAHNominationAlerts],
        [BlacklistedForAHNominations], 
        [SessionToken],
        [DataTokenID],
        [UserCreationSourceID],
        [PasswordResetDate],
        [UseTwoFactor],
        [TwoFactorToken],
        [TwoFactorResetDate],
        [Email],
        [EmailConfirmed],
        -- [DataSource],
        -- [CompanyCreated], 
        -- [CompanyModifiedDate], 
        -- [UserCreated], 
        -- [UserModifiedDate],
        -- [NumOfCnts],
        [Created],
        [ModifiedDate],
        CASE WHEN [NewRowNumber]=1 THEN 1
        ELSE 0
        END AS [IsCurrent]
    FROM (
        SELECT 
            [UserID],
            [Name],
            [IsActiveUser],
            [CompanyID],
            [CompanyName],
            [CompanyType], 
            [CompanyDescription],
            [AboutUs],
            [IsActiveCompany],
            [PhoneNumber],
            [Address],
            [City],
            [State],
            [PostalCode],
            [Country],
            [Latitude],
            [Longitude], 
            [MaxActiveListings],
            [MaxFeaturedListings],
            [OptInThirdParty],
            [LogoURL],
            [CompanyURL],
            [ImageSortType],
            [ListingPaymentType], 
            [OverrideMaxActiveAlertCount],
            [DisableImmediateSavedSearches],
            [DisableDailySavedSearches],
            [DisableFirstAlerts],
            [BuyerInquiry_IncludeADF],
            [BuyerInquiry_ADFOptionID],
            [BuyerInquiryEmail],
            [DashboardLock],
            [WhitelistedForAHNominations],
            [OptOutAHNominationAlerts],
            [BlacklistedForAHNominations], 
            [SessionToken],
            [DataTokenID],
            [UserCreationSourceID],
            [PasswordResetDate],
            [UseTwoFactor],
            [TwoFactorToken],
            [TwoFactorResetDate],
            [Email],
            [EmailConfirmed],
            -- [DataSource],
            -- [CompanyCreated], 
            -- [CompanyModifiedDate], 
            -- [UserCreated], 
            -- [UserModifiedDate],
            -- [NumOfCnts],
            [Created],
            [ModifiedDate],
            -- ROW_NUMBER() OVER(
            --     PARTITION BY [UserID], [CompanyID]
            --     ORDER BY [Created] DESC, [ModifiedDate] DESC
            -- ) AS [NewRowNumber]
            ROW_NUMBER() OVER(
                PARTITION BY [CompanyID]
                ORDER BY [Created] DESC, [ModifiedDate] DESC
            ) AS [NewRowNumber]
        FROM (
            SELECT 
                t1.[UserID],
                [Name],
                [IsActiveUser],
                t1.[CompanyID],
                [CompanyName],
                [CompanyType], 
                [CompanyDescription],
                [AboutUs],
                [IsActiveCompany],
                [PhoneNumber],
                [Address],
                [City],
                [State],
                [PostalCode],
                [Country],
                [Latitude],
                [Longitude], 
                [MaxActiveListings],
                [MaxFeaturedListings],
                [OptInThirdParty],
                [LogoURL],
                [CompanyURL],
                [ImageSortType],
                [ListingPaymentType], 
                [OverrideMaxActiveAlertCount],
                [DisableImmediateSavedSearches],
                [DisableDailySavedSearches],
                [DisableFirstAlerts],
                [BuyerInquiry_IncludeADF],
                [BuyerInquiry_ADFOptionID],
                [BuyerInquiryEmail],
                [DashboardLock],
                [WhitelistedForAHNominations],
                [OptOutAHNominationAlerts],
                [BlacklistedForAHNominations], 
                [SessionToken],
                [DataTokenID],
                [UserCreationSourceID],
                [PasswordResetDate],
                [UseTwoFactor],
                [TwoFactorToken],
                [TwoFactorResetDate],
                [Email],
                [EmailConfirmed],
                -- [DataSource],
                -- [CompanyCreated], 
                -- [CompanyModifiedDate], 
                -- [UserCreated], 
                -- [UserModifiedDate],
                t2.[NumOfCnts],
                CASE 
                    WHEN t2.[NumOfCnts] IS NULL
                        THEN CASE 
                            WHEN [DataSource]='UserEmail' 
                                THEN [UserCreated]
                            WHEN [DataSource]='CompanyEmail'
                                THEN [CompanyCreated]
                            END
                    WHEN t2.[NumOfCnts]='One'
                        THEN CASE 
                            WHEN [DataSource]='UserEmail' 
                                THEN CASE 
                                    WHEN [UserCreated]>=[CompanyCreated]
                                        THEN [UserCreated]
                                    WHEN [UserCreated]<[CompanyCreated]
                                        THEN [CompanyCreated]
                                    END
                            WHEN [DataSource]='CompanyEmail'
                                THEN CASE 
                                    WHEN [UserCreated]<=[CompanyCreated]
                                        THEN [CompanyCreated]
                                    WHEN [UserCreated]>[CompanyCreated]
                                        THEN [UserCreated]
                                    END
                            END
                    WHEN t2.[NumOfCnts]='Multiple'
                        THEN CASE 
                            WHEN [DataSource]='UserEmail' 
                                THEN CASE 
                                    WHEN ([UserCreated]=[CompanyCreated] AND [UserModifiedDate]<=[CompanyModifiedDate]) OR ([UserCreated]<>[CompanyCreated])
                                        THEN [UserCreated]
                                    WHEN [UserCreated]=[CompanyCreated] AND [UserModifiedDate]>[CompanyModifiedDate]
                                        THEN [CompanyModifiedDate]
                                    END
                            WHEN [DataSource]='CompanyEmail'
                                THEN CASE
                                    WHEN [UserCreated]=[CompanyCreated] AND [UserModifiedDate]<[CompanyModifiedDate]
                                        THEN [UserModifiedDate]
                                    WHEN ([UserCreated]=[CompanyCreated] AND [UserModifiedDate]>=[CompanyModifiedDate]) OR ([UserCreated]<>[CompanyCreated])
                                        THEN [CompanyCreated]
                                    END
                        END
                END AS [Created],
                CASE 
                    WHEN t2.[NumOfCnts] IS NULL
                        THEN CASE
                                WHEN [DataSource]='UserEmail' 
                                    THEN [UserModifiedDate]
                                WHEN [DataSource]='CompanyEmail'
                                    THEN [CompanyModifiedDate]
                                END
                    WHEN t2.[NumOfCnts]='One'
                        THEN CASE 
                            WHEN [DataSource]='UserEmail' 
                                THEN CASE 
                                    WHEN [UserModifiedDate]>=[CompanyModifiedDate]
                                        THEN [UserModifiedDate]
                                    WHEN [UserModifiedDate]<[CompanyModifiedDate]
                                        THEN [CompanyModifiedDate]
                                        END
                            WHEN [DataSource]='CompanyEmail'
                                THEN CASE 
                                    WHEN [UserModifiedDate]<=[CompanyModifiedDate]
                                        THEN [CompanyModifiedDate]
                                    WHEN [UserModifiedDate]>[CompanyModifiedDate]
                                        THEN [UserModifiedDate]
                                    END
                            END
                    WHEN t2.[NumOfCnts]='Multiple'
                        THEN CASE
                            WHEN [DataSource]='UserEmail' 
                                THEN CASE 
                                    WHEN ([UserModifiedDate]<>[CompanyModifiedDate] AND CAST([UserModifiedDate] AS DATE)<>CAST([CompanyModifiedDate] AS DATE)) 
                                        THEN [UserModifiedDate]
                                    WHEN ([UserModifiedDate]<>[CompanyModifiedDate] AND CAST([UserModifiedDate] AS DATE)=CAST([CompanyModifiedDate] AS DATE) OR [UserCreated]>=[CompanyCreated]) 
                                        THEN CASE 
                                            WHEN [UserModifiedDate]>=[CompanyModifiedDate]
                                                THEN [UserModifiedDate]
                                            WHEN [UserModifiedDate]<[CompanyModifiedDate]
                                                THEN [CompanyModifiedDate]
                                            END
                                    END
                            WHEN [DataSource]='CompanyEmail'
                                THEN CASE
                                    WHEN ([UserModifiedDate]<>[CompanyModifiedDate] AND CAST([UserModifiedDate] AS DATE)<>CAST([CompanyModifiedDate] AS DATE))
                                        THEN [CompanyModifiedDate]
                                    WHEN ([UserModifiedDate]<>[CompanyModifiedDate] AND CAST([UserModifiedDate] AS DATE)=CAST([CompanyModifiedDate] AS DATE) OR [UserCreated]>=[CompanyCreated]) 
                                        THEN [UserCreated]
                                    END
                            END
                END AS [ModifiedDate]
            FROM CompanyUser_CTE1 t1
            LEFT JOIN CompanyUser_NumOfCnts_CTE t2
                ON t1.[UserID]=t2.[UserID]
                    AND t1.[CompanyID]=t2.[CompanyID]
            ) AS temp1 
        ) AS temp2 
)
-- SELECT COUNT(*) FROM CompanyUser_CTE2 WHERE [Email] IS NULL; -- 0
-- SELECT COUNT(*) FROM CompanyUser_CTE2 WHERE [Created] IS NULL; -- 0
-- SELECT COUNT(*) FROM CompanyUser_CTE2 WHERE [ModifiedDate] IS NULL; -- 0

-- SELECT TOP 100 * FROM CompanyUser_CTE2 WHERE [UserID] IS NULL ORDER BY [UserID], [CompanyID];
-- SELECT TOP 100 * FROM CompanyUser_CTE2 WHERE [UserID] IS NOT NULL ORDER BY [UserID], [CompanyID];

, PotentialBuyerFlag_CTE AS (
    SELECT 
        DISTINCT [CompanyID],
        1[PotentialBuyerFlag]
    FROM (
        SELECT 
            DISTINCT [CompanyID] 
        FROM CompanyUser_CTE2
        WHERE [Email] IN (SELECT [Email] FROM [stg].[CC_BuyerInquiry_FinalView])
        UNION
        SELECT 
            DISTINCT [CompanyID]
        FROM CompanyUser_CTE2
        WHERE [PhoneNumber] IN (SELECT [Phone] FROM [stg].[CC_BuyerInquiry_FinalView])
        ) AS temp1
)
, ShareInfoFlag_CTE AS (
    SELECT
        DISTINCT [UserId],
        1[ShareInfoFlag]
    FROM [stg].[CC_ShareInfo_FinalView]
)
, FavoritesFlag_CTE AS (
    SELECT 
        DISTINCT [UserFK] AS [UserID], 
        1[FavoritesFlag]
    FROM [stg].[CC_Favorites_FinalView]
)
, NewsLetterSubscriptionFlag_CTE AS (
    SELECT
        DISTINCT [CompanyID],
        1[NewsLetterSubscriptionFlag]
    FROM CompanyUser_CTE2
        WHERE [Email] IN (SELECT [Email] FROM [stg].[CC_NewsLetter_FinalView])
)
, ListingTrackFlag_CTE AS (
    SELECT 
        DISTINCT [UserId],
        1[ListingTrackFlag]
    FROM [stg].[CC_ListingTrack_FinalView]
)
, SearchHistoryFlag_CTE AS (
    SELECT 
        DISTINCT [UserFK] AS [UserID],
        1[SearchHistoryFlag]
    FROM [stg].[CC_SearchHistory_FinalView]
)
, SearchHistoryListingFlag_CTE AS (
    SELECT 
        DISTINCT [UserFK] AS [UserID],
        1[SearchHistoryListingFlag]
    FROM [stg].[CC_SearchHistory_Listings_FinalView] AS shl
    LEFT JOIN [stg].[CC_SearchHistory_FinalView] AS sh
        ON shl.[SearchHistoryFK]=sh.[SearchHistoryPK]
)
, CompanyUser_with_flags_CTE AS (
    SELECT 
        t1.[UserID],
        [Name],
        [IsActiveUser],
        t1.[CompanyID],
        [CompanyName],
        [CompanyType], 
        CASE WHEN [CompanyType] NOT IN ('PrivateSeller') THEN 1
        ELSE 0
        END AS [CompanyRepresentativeFlag],
        [CompanyDescription],
        [AboutUs],
        [IsActiveCompany],
        ISNULL(t2.[PotentialBuyerFlag], 0) AS [PotentialBuyerFlag],
        ISNULL(t3.[ShareInfoFlag], 0) AS [ShareInfoFlag],
        ISNULL(t4.[FavoritesFlag], 0) AS [FavoritesFlag], 
        ISNULL(t5.[NewsLetterSubscriptionFlag], 0) AS [NewsLetterSubscriptionFlag], 
        ISNULL(t6.[ListingTrackFlag], 0) AS [ListingTrackFlag], 
        ISNULL(t7.[SearchHistoryFlag], 0) AS [SearchHistoryFlag], 
        ISNULL(t8.[SearchHistoryListingFlag], 0) AS [SearchHistoryListingFlag], 
        [PhoneNumber],
        [Address],
        [City],
        [State],
        [PostalCode],
        [Country],
        [Latitude],
        [Longitude], 
        [MaxActiveListings],
        [MaxFeaturedListings],
        [OptInThirdParty],
        [LogoURL],
        [CompanyURL],
        [ImageSortType],
        [ListingPaymentType], 
        [OverrideMaxActiveAlertCount],
        [DisableImmediateSavedSearches],
        [DisableDailySavedSearches],
        [DisableFirstAlerts],
        [BuyerInquiry_IncludeADF],
        [BuyerInquiry_ADFOptionID],
        [BuyerInquiryEmail],
        [DashboardLock],
        [WhitelistedForAHNominations],
        [OptOutAHNominationAlerts],
        [BlacklistedForAHNominations], 
        [SessionToken],
        [DataTokenID],
        [UserCreationSourceID],
        [PasswordResetDate],
        [UseTwoFactor],
        [TwoFactorToken],
        [TwoFactorResetDate],
        [Email],
        [EmailConfirmed],
        -- [DataSource],
        -- [CompanyCreated], 
        -- [CompanyModifiedDate], 
        -- [UserCreated], 
        -- [UserModifiedDate],
        -- [NumOfCnts],
        [Created],
        [ModifiedDate],
        [IsCurrent]
    FROM CompanyUser_CTE2 AS t1
    LEFT JOIN PotentialBuyerFlag_CTE AS t2
        ON t1.[CompanyID]=t2.[CompanyID]
    LEFT JOIN ShareInfoFlag_CTE AS t3
        ON t1.[UserID]=t3.[UserId]
    LEFT JOIN FavoritesFlag_CTE AS t4
        ON t1.[UserID]=t4.[UserID]
    LEFT JOIN NewsLetterSubscriptionFlag_CTE AS t5
        ON t1.[CompanyID]=t5.[CompanyID]
    LEFT JOIN ListingTrackFlag_CTE AS t6
        ON t1.[UserID]=t6.[UserId]
    LEFT JOIN SearchHistoryFlag_CTE AS t7
        ON t1.[UserID]=t7.[UserID]
    LEFT JOIN SearchHistoryListingFlag_CTE AS t8
        ON t1.[UserID]=t8.[UserID]
)

SELECT 
    HASHBYTES('SHA2_256', 
        CONCAT(
            COALESCE(CAST([UserID] AS VARCHAR(20)), ''), '|',
            COALESCE(CAST([CompanyID] AS VARCHAR(20)), ''), '|',
            COALESCE(CAST([EmailConfirmed] AS VARCHAR(20)), ''), '|',
            COALESCE(CAST([Created] AS VARCHAR(20)), '')
        )
    ) AS [PotentialBuyer_Skey],
    [UserID],
    [Name],
    [IsActiveUser],
    [CompanyID],
    [CompanyName],
    [CompanyType], 
    [CompanyRepresentativeFlag],
    [CompanyDescription],
    [AboutUs],
    [IsActiveCompany],
    [PotentialBuyerFlag],
    [ShareInfoFlag],
    [FavoritesFlag], 
    [NewsLetterSubscriptionFlag], 
    [ListingTrackFlag], 
    [SearchHistoryFlag], 
    [SearchHistoryListingFlag], 
    [Email],
    [EmailConfirmed],
    [PhoneNumber],
    [Address],
    [City],
    [State],
    [PostalCode],
    [Country],
    [Latitude],
    [Longitude], 
    [MaxActiveListings],
    [MaxFeaturedListings],
    [OptInThirdParty],
    [LogoURL],
    [CompanyURL],
    [ImageSortType],
    [ListingPaymentType], 
    [OverrideMaxActiveAlertCount],
    [DisableImmediateSavedSearches],
    [DisableDailySavedSearches],
    [DisableFirstAlerts],
    [BuyerInquiry_IncludeADF],
    [BuyerInquiry_ADFOptionID],
    [BuyerInquiryEmail],
    [DashboardLock],
    [WhitelistedForAHNominations],
    [OptOutAHNominationAlerts],
    [BlacklistedForAHNominations], 
    [SessionToken],
    [DataTokenID],
    [UserCreationSourceID],
    [PasswordResetDate],
    [UseTwoFactor],
    [TwoFactorToken],
    [TwoFactorResetDate],
    [Created],
    [ModifiedDate],
    [IsCurrent]
FROM CompanyUser_with_flags_CTE