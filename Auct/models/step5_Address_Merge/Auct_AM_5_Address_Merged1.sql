{{ config(materialized='table',schema='stg')}}
SELECT 
        [CustomerAccountID],
        [CurrentCompanyID],
        [AddressID],
        [Address],
        [City],
        [StateProvince],
        [PostalCode],
        [Country],
        [AddressType],
        [AddressStatus],
        [IsDefaultAddress],
        [IsActiveAddress],
        [EffectiveStartDate],
        ISNULL([EffectiveEndDate], '{{ var('MaxValidDate') }}') AS [EffectiveEndDate]
    FROM (
        SELECT     
            [CustomerAccountID],
            [CurrentCompanyID],
            [AddressID],
            [Address],
            [City],
            [StateProvince],
            [PostalCode],
            [Country],
            [AddressType],
            [AddressStatus],
            [IsDefaultAddress],
            [IsActiveAddress],
            [CreatedAddress] AS [EffectiveStartDate],
            CASE WHEN [CustomerAccountID] IS NOT NULL
                THEN LEAD([CreatedAddress]) OVER(
                        PARTITION BY [CustomerAccountID], [AddressID], [AddressType]
                        ORDER BY [CustomerAccountID], [AddressID], [AddressType], [CreatedAddress]
                    ) 
            ELSE LEAD([CreatedAddress]) OVER(
                        PARTITION BY [AddressID], [AddressType]
                        ORDER BY [AddressID], [AddressType], [CreatedAddress]
                    ) 
            END AS [EffectiveEndDate]
        FROM Auct_AM_4_Temp2 AS temp2
        WHERE [RowNumber]=1
        ) AS temp3