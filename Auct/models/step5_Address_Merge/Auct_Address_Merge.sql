{{ config(materialized='table',schema='stg')}}
SELECT 
        [CustomerAccountID],
        [CurrentCompanyID],
        [AddressID],
        -- [AddressType],
        -- [Address],
        [home_Address], 
        [business_Address], 
        [local_Address], 
        [dealer_Address], 
        [mailing_Address],
        [City],
        [StateProvince] as [State],
        [PostalCode],
        [Country],
        [AddressStatus],
        [IsDefaultAddress],
        [IsActiveAddress],
        [EffectiveStartDate],
        [EffectiveEndDate],
        CASE WHEN [NewRowNumber]='1' 
            THEN '1'
        ELSE '0'
        END AS [IsCurrent] 
    FROM (
        SELECT 
            [CustomerAccountID],
            [CurrentCompanyID],
            [AddressID],
            -- [AddressType],
            -- [Address],
            [home_Address], 
            [business_Address], 
            [local_Address], 
            [dealer_Address], 
            [mailing_Address],
            [City],
            [StateProvince],
            [PostalCode],
            [Country],
            [AddressStatus],
            [IsDefaultAddress],
            [IsActiveAddress],
            [EffectiveStartDate],
            [EffectiveEndDate],
            CASE WHEN [CustomerAccountID] IS NOT NULL
                THEN ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID]
                    ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], '{{ var('MaxValidDate') }}') DESC
                    ) 
            ELSE ROW_NUMBER() OVER(
                    PARTITION BY [AddressID]
                    ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], '{{ var('MaxValidDate') }}') DESC
                    ) 
            END AS [NewRowNumber]
        FROM (
            SELECT 
                [CustomerAccountID],
                [CurrentCompanyID],
                [AddressID],
                -- [AddressType],
                -- [Address],
                Col,
                Val,
                [City],
                [StateProvince],
                [PostalCode],
                [Country],
                [AddressStatus],
                [IsDefaultAddress],
                [IsActiveAddress],
                [EffectiveStartDate],
                [EffectiveEndDate]
            FROM (
                SELECT 
                    [CustomerAccountID],
                    [CurrentCompanyID],
                    [AddressID],
                    -- [AddressType],
                    -- [Address],
                    LOWER([AddressType])+'_Address' AS Col,
                    [Address] AS Val,
                    [City],
                    [StateProvince],
                    [PostalCode],
                    [Country],
                    [AddressStatus],
                    [IsDefaultAddress],
                    [IsActiveAddress],
                    [EffectiveStartDate],
                    [EffectiveEndDate]
                FROM Auct_AM_5_Address_Merged1
                ) AS SRC1
            ) AS SRC2
            PIVOT (MAX(Val) FOR Col IN ([home_Address], [business_Address], [local_Address], [dealer_Address], [mailing_Address])) AS PVT
        ) AS temp1