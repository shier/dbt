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
                [CreatedAddress],
                ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID], [CurrentCompanyID], [AddressID], [Address], [City], [StateProvince], [PostalCode], [Country], [AddressType], [AddressStatus], [IsDefaultAddress], [IsActiveAddress], [CreatedAddress]
                    ORDER BY [CustomerAccountID], [CurrentCompanyID], [AddressID], [Address], [City], [StateProvince], [PostalCode], [Country], [AddressType], [AddressStatus], [IsDefaultAddress], [IsActiveAddress], [CreatedAddress]
                ) AS [RowNumber]
            FROM (
                SELECT 
                    addrasgmt.[CustomerAccountID],
                    addrasgmt.[CompanyID] AS [CurrentCompanyID],
                    ISNULL(addr.[AddressID], addrasgmt.[AddressID]) AS [AddressID],
                    NULLIF(CONCAT(addr.[Address1], ' ', addr.[Address2]), '') AS [Address],
                    addr.[City],
                    addr.[StateProvince], -- (Update) addr.[StateProvince], OR  addr.[StateProvince] AS [StateProvince],
                    addr.[PostalCode],
                    country.[Name] AS [Country], -- (Update) country.[Country],
                    addrty.[Name] AS [AddressType], -- (Update) addrty.[AddressType],
                    CASE WHEN addrasgmt.[AddDescr] IN ('BAD ADDRESS') AND addrsts.[Name] IN ('VERIFIED') -- (Update) CASE WHEN addrasgmt.[AddDescription] IN ('BAD ADDRESS') AND addrsts.[AddressStatus] IN ('VERIFIED')
                        THEN 'BAD'
                    ELSE addrsts.[Name] -- (Update) ELSE addrsts.[AddressStatus]
                    END AS [AddressStatus],
                    addrasgmt.[IsDefault] AS [IsDefaultAddress],
                    addr.[Active] AS [IsActiveAddress], -- (Update) addr.[Active] AS [IsActiveAddress], OR addr.[IsActive] AS [IsActiveAddress], 
                    ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_FinalView] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC)) AS [CreatedAddress1],
                    firstspotted.[Created] AS [CreatedAddress2],
                    -- (Comment) SELECT [AddressID], COUNT(*) FROM Address_merged GROUP BY [AddressID] ORDER BY COUNT(*) DESC; seems like all record for [AddressID] only happen once
                    CASE 
                        WHEN firstspotted.[Created] IS NOT NULL
                            THEN CASE 
                                WHEN ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_FinalView] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC))<=firstspotted.[Created]
                                    THEN ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_FinalView] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC))
                                ELSE firstspotted.[Created]
                                END
                        ELSE ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_FinalView] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC))
                    END AS [CreatedAddress]
                FROM stg.[Auct_Address_FinalView] addr -- need replace [Auct_Address_FinalView] with [Auct_Address_Cleaning_stg]
                FULL OUTER JOIN [Auct_AddressAssignments_FinalView] addrasgmt -- need replace [Auct_AddressAssignments_Ex] with [Auct_AddressAssignments]
                    ON addr.[AddressID]=addrasgmt.[AddressID]
                LEFT JOIN stg.[Auct_Country_FinalView] country -- need replace [Auct_Country_Ex] with [Auct_Country]
                    ON addr.[Country]=country.[CountryID] -- (Update) ON addr.[CountryID]=country.[CountryID]
                LEFT JOIN [Auct_AddressTypes_FinalView] addrty -- need replace [Auct_AddressTypes_Ex] with [Auct_AddressTypes]
                    ON addrasgmt.[AddressTypeID]=addrty.[AddressTypeID]
                LEFT JOIN [Auct_AddressStatus_FinalView] addrsts -- need replace [Auct_AddressStatus_Ex] with [Auct_AddressStatus] 
                    ON addrasgmt.[AddressStatusID]=addrsts.[AddressStatusID]
                LEFT JOIN [Auct_AM_3_First_Spotted_Address_Merged] firstspotted 
                    ON addr.[AddressID]=firstspotted.[AddressID]
                WHERE COALESCE(NULLIF(CONCAT(addr.[Address1], ' ', addr.[Address2]), ''), addr.[City], addr.[StateProvince], addr.[PostalCode], country.[Name]) IS NOT NULL -- (Update) WHERE COALESCE(NULLIF(CONCAT(addr.[Address1], ' ', addr.[Address2]), ''), addr.[City], addr.[StateProvince], addr.[PostalCode], country.[Name]) IS NOT NULL
                -- (Comment) SELECT COUNT(*) FROM Address_merged; -- 243041 
                -- (Comment) SELECT COUNT(DISTINCT [AddressID]) FROM Address_merged; -- 243041
                ) AS temp1
            