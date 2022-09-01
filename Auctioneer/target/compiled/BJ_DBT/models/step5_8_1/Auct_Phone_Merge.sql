
With 

Phone_merged1 AS (
    SELECT 
        [CustomerAccountID],
        [PhoneID],
        [PhoneNumber],
        [PhoneType],
        [PhoneStatus],
        [IsDefaultPhone],
        [IsActivePhone],
        [EffectiveStartDate],
        ISNULL([EffectiveEndDate], '9999-12-31') AS [EffectiveEndDate]
    FROM (
        SELECT 
            [CustomerAccountID],
            [PhoneID],
            [PhoneNumber],
            [PhoneType],
            [PhoneStatus],
            [IsDefaultPhone],
            [IsActivePhone],
            [Created] AS [EffectiveStartDate],
            CASE WHEN [CustomerAccountID] IS NOT NULL
                THEN LEAD([Created]) OVER(
                        PARTITION BY [CustomerAccountID], [PhoneID], [PhoneType]
                        ORDER BY [CustomerAccountID], [PhoneID], [PhoneType], [Created]
                    ) 
            ELSE LEAD([Created]) OVER(
                        PARTITION BY [PhoneID], [PhoneType]
                        ORDER BY [PhoneID], [PhoneType], [Created]
                    ) 
            END AS [EffectiveEndDate]
        FROM (
            SELECT 
                [CustomerAccountID],
                [PhoneID],
                [PhoneNumber],
                [PhoneType],
                [PhoneStatus],
                [IsDefaultPhone],
                [IsActivePhone],
                [Created],
                [DateSourcePhone],
                ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID], [PhoneID], [PhoneNumber], [PhoneType], [PhoneStatus], [IsDefaultPhone], [IsActivePhone]
                    ORDER BY [CustomerAccountID], [PhoneID], [PhoneNumber], [PhoneType], [PhoneStatus], [IsDefaultPhone], [IsActivePhone], [Created]
                ) AS [RowNumber]
            FROM (
                SELECT 
                    phasgmt.[CustomerAccountID],
                    ISNULL(phasgmt.[PhoneID], ph.[PhoneID]) AS [PhoneID],
                    -- ph.[AreaCode],
                    -- ph.[PhoneNumber],
                    CASE 
                        WHEN ph.[AreaCode] IS NULL 
                            THEN ph.[PhoneNumber]
                        WHEN ph.[AreaCode] IS NOT NULL
                            THEN CONCAT(ph.[AreaCode], '-', ph.[PhoneNumber])
                    END AS [PhoneNumber],
                    NULLIF(phty.[Name], '[None]') AS [PhoneType], -- (Update) NULLIF(phty.[PhoneType], '[None]') AS [PhoneType],
                    phsts.[Name] AS [PhoneStatus], -- (Update) phsts.[PhoneStatus],
                    phasgmt.[IsDefault] AS [IsDefaultPhone],
                    ph.[Active] AS [IsActivePhone], -- (Update) ph.[IsActive] AS [IsActivePhone], OR ph.[Active] AS [IsActivePhone],
                    ph.[Created] AS [CreatedPhone],
                    phasgmt.[Created] AS [CreatedPhoneAssignments] -- (Update) phasgmt.[Created] AS [CreatedPhoneAssignments]
                FROM stg.[Auct_PhoneAssignments_FinalView] phasgmt -- (Update) need replace [dbo].[Auct_PhoneAssignments_Ex] with [dbo].[Auct_PhoneAssignments]
                FULL OUTER JOIN stg.[Auct_Phone_Finalview] ph -- (Update) need replace [dbo].[Auct_Phone_Ex] with [dbo].[Auct_Phone_Ex]
                    ON phasgmt.[PhoneID]=ph.[PhoneID]
                LEFT JOIN stg.[Auct_PhoneType_FinalView] phty -- (Update) need replace [dbo].[Auct_PhoneType_Ex] with [dbo].[Auct_PhoneType]
                    ON phasgmt.[PhoneTypeID]=phty.[PhoneTypeID]
                LEFT JOIN stg.[Auct_PhoneStatus_FinalView] phsts -- (Update) need replace [dbo].[Auct_PhoneStatus_Ex] with [dbo].[Auct_PhoneStatus]
                    ON phasgmt.[PhoneStatusID]=phsts.[PhoneStatusID]
                WHERE (CASE WHEN ph.[AreaCode] IS NULL THEN ph.[PhoneNumber] WHEN ph.[AreaCode] IS NOT NULL THEN CONCAT(ph.[AreaCode], '-', ph.[PhoneNumber]) END) IS NOT NULL
                ) AS temp1
            UNPIVOT ([Created] FOR [DateSourcePhone] IN ([CreatedPhone], [CreatedPhoneAssignments])) AS unpvt
            ) AS temp2
        WHERE [RowNumber]=1
        ) AS temp3
)
, Phone_merged AS (
    SELECT 
        *,
        CASE WHEN [NewRowNumber]='1' 
            THEN '1'
        ELSE '0'
        END AS [IsCurrent] 
    FROM (
        SELECT 
            *,
            CASE WHEN [CustomerAccountID] IS NOT NULL
                THEN ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID]
                    ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], '9999-12-31') DESC
                    ) 
            ELSE ROW_NUMBER() OVER(
                PARTITION BY [EffectiveStartDate]
                ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], '9999-12-31') DESC
                )
            END AS [NewRowNumber]
        FROM (
            SELECT 
                [CustomerAccountID],
                MIN([mobilephone_PhoneID]) AS [MobilePhone_PhoneID], 
                MIN([mobilephone_PhoneNumber]) AS [MobilePhone_PhoneNumber], 
                MIN([mobilephone_PhoneStatus]) AS [MobilePhone_PhoneStatus], 
                MIN([IsDefault_mobilephone]) AS [IsDefaultMobilePhone], 
                MIN([IsActive_mobilephone]) AS [IsActiveMobilePhone], 
                MIN([directphone_PhoneID]) AS [DirectPhone_PhoneID], 
                MIN([directphone_PhoneNumber]) AS [DirectPhone_PhoneNumber], 
                MIN([directphone_PhoneStatus]) AS [DirectPhone_PhoneStatus],
                MIN([IsDefault_directphone]) AS [IsDefaultDirectPhone],  
                MIN([IsActive_directphone]) AS [IsActiveDirectPhone],  
                MIN([homephone_PhoneID]) AS [HomePhone_PhoneID],
                MIN([homephone_PhoneNumber]) AS [HomePhone_PhoneNumber], 
                MIN([homephone_PhoneStatus]) AS [HomePhone_PhoneStatus],  
                MIN([IsDefault_homephone]) AS [IsDefaultHomePhone],  
                MIN([IsActive_homephone]) AS [IsActiveHomePhone],  
                MIN([homefax_PhoneID]) AS [HomeFax_PhoneID],  
                MIN([homefax_PhoneNumber]) AS [HomeFax_PhoneNumber], 
                MIN([homefax_PhoneStatus]) AS [HomeFax_PhoneStatus],  
                MIN([IsDefault_homefax]) AS [IsDefaultHomeFax],  
                MIN([IsActive_homefax]) AS [IsActiveHomeFax],  
                MIN([dealermobile_PhoneID]) AS [DealerMobile_PhoneID],  
                MIN([dealermobile_PhoneNumber]) AS [DealerMobile_PhoneNumber], 
                MIN([dealermobile_PhoneStatus]) AS [DealerMobile_PhoneStatus],  
                MIN([IsDefault_dealermobile]) AS [IsDefaultDealerMobile],  
                MIN([IsActive_dealermobile]) AS [IsActiveDealerMobile],  
                MIN([dealerphone_PhoneID]) AS [DealerPhone_PhoneID],  
                MIN([dealerphone_PhoneNumber]) AS [DealerPhone_PhoneNumber], 
                MIN([dealerphone_PhoneStatus]) AS [DealerPhone_PhoneStatus],  
                MIN([IsDefault_dealerphone]) AS [IsDefaultDealerPhone],  
                MIN([IsActive_dealerphone]) AS [IsActiveDealerPhone],  
                MIN([dealerfax_PhoneID]) AS [DealerFax_PhoneID],  
                MIN([dealerfax_PhoneNumber]) AS [DealerFax_PhoneNumber], 
                MIN([dealerfax_PhoneStatus]) AS [DealerFax_PhoneStatus],  
                MIN([IsDefault_dealerfax]) AS [IsDefaultDealerFax],  
                MIN([IsActive_dealerfax]) AS [IsActiveDealerFax],  
                MIN([businessphone_PhoneID]) AS [BusinessPhone_PhoneID],  
                MIN([businessphone_PhoneNumber]) AS [BusinessPhone_PhoneNumber], 
                MIN([businessphone_PhoneStatus]) AS [BusinessPhone_PhoneStatus],  
                MIN([IsDefault_businessphone]) AS [IsDefaultBusinessPhone],  
                MIN([IsActive_businessphone]) AS [IsActiveBusinessPhone],  
                MIN([businessfax_PhoneID]) AS [BusinessFax_PhoneID],  
                MIN([businessfax_PhoneNumber]) AS [BusinessFax_PhoneNumber], 
                MIN([businessfax_PhoneStatus]) AS [BusinessFax_PhoneStatus],  
                MIN([IsDefault_businessfax]) AS [IsDefaultBusinessFax],  
                MIN([IsActive_businessfax]) AS [IsActiveBusinessFax],  
                MIN([businessmobile_PhoneID]) AS [BusinessMobile_PhoneID],  
                MIN([businessmobile_PhoneNumber]) AS [BusinessMobile_PhoneNumber], 
                MIN([businessmobile_PhoneStatus]) AS [BusinessMobile_PhoneStatus],  
                MIN([IsDefault_businessmobile]) AS [IsDefaultBusinessMobile],  
                MIN([IsActive_businessmobile]) AS [IsActiveBusinessMobile], 
                MIN([vendorphone_PhoneID]) AS [VendorPhone_PhoneID],  
                MIN([vendorphone_PhoneNumber]) AS [VendorPhone_PhoneNumber], 
                MIN([vendorphone_PhoneStatus]) AS [VendorPhone_PhoneStatus],  
                MIN([IsDefault_vendorphone]) AS [IsDefaultVendorPhone],      
                MIN([IsActive_vendorphone]) AS [IsActiveVendorPhone],  
                MIN([vendorfax_PhoneID]) AS [VendorFax_PhoneID],  
                MIN([vendorfax_PhoneNumber]) AS [VendorFax_PhoneNumber], 
                MIN([vendorfax_PhoneStatus]) AS [VendorFax_PhoneStatus],  
                MIN([IsDefault_vendorfax]) AS [IsDefaultVendorFax],  
                MIN([IsActive_vendorfax]) AS [IsActiveVendorFax],  
                MIN([requestphone_PhoneID]) AS [RequestNumber_PhoneID],  
                MIN([requestphone_PhoneNumber]) AS [RequestNumber_PhoneNumber], 
                MIN([requestphone_PhoneStatus]) AS [RequestNumber_PhoneStatus],  
                MIN([IsDefault_requestphone]) AS [IsDefaultRequestNumber],  
                MIN([IsActive_requestphone]) AS [IsActiveRequestNumber],  
                MIN([requestfax_PhoneID]) AS [RequestFax_PhoneID],  
                MIN([requestfax_PhoneNumber]) AS [RequestFax_PhoneNumber],
                MIN([requestfax_PhoneStatus]) AS [RequestFax_PhoneStatus],
                MIN([IsDefault_requestfax]) AS [IsDefaultRequestFax],
                MIN([IsActive_requestfax]) AS [IsActiveRequestFax],
                MIN([localphone_PhoneID]) AS [LocalPhone_PhoneID],
                MIN([localphone_PhoneNumber]) AS [LocalPhone_PhoneNumber],
                MIN([localphone_PhoneStatus]) AS [LocalPhone_PhoneStatus], 
                MIN([IsDefault_localphone]) AS [IsDefaultLocalPhone],
                MIN([IsActive_localphone]) AS [IsActiveLocalPhone], 
                MIN([pager_PhoneID]) AS [Pager_PhoneID],
                MIN([pager_PhoneNumber]) AS [Pager_PhoneNumber], 
                MIN([pager_PhoneStatus]) AS [Pager_PhoneStatus],  
                MIN([IsDefault_pager]) AS [IsDefaultPager],
                MIN([IsActive_pager]) AS [IsActivePager],
                MIN([UnknownPhoneType_PhoneID]) AS [UnknownPhoneType_PhoneID],
                MIN([UnknownPhoneType_PhoneNumber]) AS [UnknownPhoneType_PhoneNumber], 
                MIN([UnknownPhoneType_PhoneStatus]) AS [UnknownPhoneType_PhoneStatus],  
                MIN([IsDefault_UnknownPhoneType]) AS [IsDefaultUnknownPhoneType],
                MIN([IsActive_UnknownPhoneType]) AS [IsActiveUnknownPhoneType],
                [EffectiveStartDate],
                [EffectiveEndDate]
            FROM (
                SELECT 
                    *
                FROM (
                    SELECT 
                        *
                    FROM (
                        SELECT 
                            *
                        FROM (
                            SELECT 
                                *
                            FROM (
                                SELECT 
                                    [CustomerAccountID],
                                    [PhoneID] AS Val1, -- (ORIGINAL) [PhoneID],
                                    ISNULL(REPLACE(LOWER([PhoneType]), ' ', ''), 'UnknownPhoneType')+'_PhoneID' AS Col1, -- (ORIGINAL) [PhoneType],
                                    [PhoneNumber] AS Val2, -- (ORIGINAL) [PhoneNumber],
                                    ISNULL(REPLACE(LOWER([PhoneType]), ' ', ''), 'UnknownPhoneType')+'_PhoneNumber' AS Col2, -- (ORIGINAL) [PhoneType],
                                    [PhoneStatus] AS Val3, -- (ORIGINAL) [PhoneStatus],
                                    ISNULL(REPLACE(LOWER([PhoneType]), ' ', ''), 'UnknownPhoneType')+'_PhoneStatus' AS Col3, -- (ORIGINAL) [PhoneType],           
                                    [IsDefaultPhone] AS Val4, -- (ORIGINAL) [IsDefaultPhone],
                                    'IsDefault_' + ISNULL(REPLACE(LOWER([PhoneType]), ' ', ''), 'UnknownPhoneType') AS Col4, -- (ORIGINAL) [PhoneType],           
                                    [IsActivePhone] AS Val5, -- (ORIGINAL) [IsActivePhone],
                                    'IsActive_' + ISNULL(REPLACE(LOWER([PhoneType]), ' ', ''), 'UnknownPhoneType') AS Col5, -- (ORIGINAL) [PhoneType],                          
                                    [EffectiveStartDate],
                                    [EffectiveEndDate]
                                FROM Phone_merged1
                                ) AS SRC1 
                                -- FOR [PhoneID]
                                PIVOT (
                                    MAX(Val1) FOR Col1 IN ([mobilephone_PhoneID], [directphone_PhoneID], [homephone_PhoneID], [homefax_PhoneID], [dealermobile_PhoneID], [dealerphone_PhoneID], [dealerfax_PhoneID], [businessphone_PhoneID], [businessfax_PhoneID], [businessmobile_PhoneID], [vendorphone_PhoneID], [vendorfax_PhoneID], [requestphone_PhoneID], [requestfax_PhoneID], [localphone_PhoneID], [pager_PhoneID], [UnknownPhoneType_PhoneID])
                                ) AS PVT1
                            ) AS SRC2
                            -- FOR [PhoneNumber]
                            PIVOT (
                                MAX(Val2) FOR Col2 IN ([mobilephone_PhoneNumber], [directphone_PhoneNumber], [homephone_PhoneNumber], [homefax_PhoneNumber], [dealermobile_PhoneNumber], [dealerphone_PhoneNumber], [dealerfax_PhoneNumber], [businessphone_PhoneNumber], [businessfax_PhoneNumber], [businessmobile_PhoneNumber], [vendorphone_PhoneNumber], [vendorfax_PhoneNumber], [requestphone_PhoneNumber], [requestfax_PhoneNumber], [localphone_PhoneNumber], [pager_PhoneNumber], [UnknownPhoneType_PhoneNumber])
                            ) AS PVT2
                        ) AS SRC3 
                        -- FOR [PhoneStatus]
                        PIVOT (
                            MAX(Val3) FOR Col3 IN ([mobilephone_PhoneStatus], [directphone_PhoneStatus], [homephone_PhoneStatus], [homefax_PhoneStatus], [dealermobile_PhoneStatus], [dealerphone_PhoneStatus], [dealerfax_PhoneStatus], [businessphone_PhoneStatus], [businessfax_PhoneStatus], [businessmobile_PhoneStatus], [vendorphone_PhoneStatus], [vendorfax_PhoneStatus], [requestphone_PhoneStatus], [requestfax_PhoneStatus], [localphone_PhoneStatus], [pager_PhoneStatus], [UnknownPhoneType_PhoneStatus])
                        ) AS PVT3
                    ) AS SRC4
                    -- FOR [IsDefaultPhone]
                    PIVOT (
                        MAX(Val4) FOR Col4 IN ([IsDefault_mobilephone], [IsDefault_directphone], [IsDefault_homephone], [IsDefault_homefax], [IsDefault_dealermobile], [IsDefault_dealerphone], [IsDefault_dealerfax], [IsDefault_businessphone], [IsDefault_businessfax], [IsDefault_businessmobile], [IsDefault_vendorphone], [IsDefault_vendorfax], [IsDefault_requestphone], [IsDefault_requestfax], [IsDefault_localphone], [IsDefault_pager], [IsDefault_UnknownPhoneType])
                    ) AS PVT4
                ) AS SRC5 
                -- FOR [IsActivePhone]
                PIVOT (
                    MAX(Val5) FOR Col5 IN ([IsActive_mobilephone], [IsActive_directphone], [IsActive_homephone], [IsActive_homefax], [IsActive_dealermobile], [IsActive_dealerphone], [IsActive_dealerfax], [IsActive_businessphone], [IsActive_businessfax], [IsActive_businessmobile], [IsActive_vendorphone], [IsActive_vendorfax], [IsActive_requestphone], [IsActive_requestfax], [IsActive_localphone], [IsActive_pager], [IsActive_UnknownPhoneType])
                
                ) AS PVT5
                GROUP BY [CustomerAccountID], [EffectiveStartDate], [EffectiveEndDate]
            ) AS temp1
        ) AS temp2
) 

SELECT 
    [CustomerAccountID],
    -- [PhoneID],
    -- [PhoneNumber],,
    -- [PhoneType],
    -- [PhoneStatus],
    -- [IsDefaultPhone],
    -- [IsActivePhone],
    [MobilePhone_PhoneID], 
    [MobilePhone_PhoneNumber], 
    [MobilePhone_PhoneStatus], 
    [IsDefaultMobilePhone], 
    [IsActiveMobilePhone], 
    [DirectPhone_PhoneID], 
    [DirectPhone_PhoneNumber], 
    [DirectPhone_PhoneStatus],
    [IsDefaultDirectPhone],  
    [IsActiveDirectPhone],  
    [HomePhone_PhoneID],
    [HomePhone_PhoneNumber], 
    [HomePhone_PhoneStatus],  
    [IsDefaultHomePhone],  
    [IsActiveHomePhone],  
    [HomeFax_PhoneID],  
    [HomeFax_PhoneNumber], 
    [HomeFax_PhoneStatus],  
    [IsDefaultHomeFax],  
    [IsActiveHomeFax],  
    [DealerMobile_PhoneID],  
    [DealerMobile_PhoneNumber], 
    [DealerMobile_PhoneStatus],  
    [IsDefaultDealerMobile],  
    [IsActiveDealerMobile],  
    [DealerPhone_PhoneID],  
    [DealerPhone_PhoneNumber], 
    [DealerPhone_PhoneStatus],  
    [IsDefaultDealerPhone],  
    [IsActiveDealerPhone],  
    [DealerFax_PhoneID],  
    [DealerFax_PhoneNumber], 
    [DealerFax_PhoneStatus],  
    [IsDefaultDealerFax],  
    [IsActiveDealerFax],  
    [BusinessPhone_PhoneID],  
    [BusinessPhone_PhoneNumber], 
    [BusinessPhone_PhoneStatus],  
    [IsDefaultBusinessPhone],  
    [IsActiveBusinessPhone],  
    [BusinessFax_PhoneID],  
    [BusinessFax_PhoneNumber], 
    [BusinessFax_PhoneStatus],  
    [IsDefaultBusinessFax],  
    [IsActiveBusinessFax],  
    [BusinessMobile_PhoneID],  
    [BusinessMobile_PhoneNumber], 
    [BusinessMobile_PhoneStatus],  
    [IsDefaultBusinessMobile],  
    [IsActiveBusinessMobile], 
    [VendorPhone_PhoneID],  
    [VendorPhone_PhoneNumber], 
    [VendorPhone_PhoneStatus],  
    [IsDefaultVendorPhone],      
    [IsActiveVendorPhone],  
    [VendorFax_PhoneID],  
    [VendorFax_PhoneNumber], 
    [VendorFax_PhoneStatus],  
    [IsDefaultVendorFax],  
    [IsActiveVendorFax],  
    [RequestNumber_PhoneID],  
    [RequestNumber_PhoneNumber], 
    [RequestNumber_PhoneStatus],  
    [IsDefaultRequestNumber],  
    [IsActiveRequestNumber],  
    [RequestFax_PhoneID],  
    [RequestFax_PhoneNumber],
    [RequestFax_PhoneStatus],
    [IsDefaultRequestFax],
    [IsActiveRequestFax],
    [LocalPhone_PhoneID],
    [LocalPhone_PhoneNumber],
    [LocalPhone_PhoneStatus], 
    [IsDefaultLocalPhone],
    [IsActiveLocalPhone], 
    [Pager_PhoneID],
    [Pager_PhoneNumber], 
    [Pager_PhoneStatus],  
    [IsDefaultPager],
    [IsActivePager],
    [UnknownPhoneType_PhoneID],
    [UnknownPhoneType_PhoneNumber], 
    [UnknownPhoneType_PhoneStatus],  
    [IsDefaultUnknownPhoneType],
    [IsActiveUnknownPhoneType],
    [EffectiveStartDate],
    [EffectiveEndDate],
    [IsCurrent] 
FROM Phone_merged 

WHERE COALESCE([MobilePhone_PhoneNumber], [DirectPhone_PhoneNumber], [HomePhone_PhoneNumber], [HomeFax_PhoneNumber], [DealerMobile_PhoneNumber], [DealerPhone_PhoneNumber], [DealerFax_PhoneNumber], [BusinessPhone_PhoneNumber], [BusinessFax_PhoneNumber], [BusinessMobile_PhoneNumber], [VendorPhone_PhoneNumber], [VendorFax_PhoneNumber], [RequestNumber_PhoneNumber], [RequestFax_PhoneNumber], [LocalPhone_PhoneNumber], [Pager_PhoneNumber], [UnknownPhoneType_PhoneNumber]) IS NOT NULL