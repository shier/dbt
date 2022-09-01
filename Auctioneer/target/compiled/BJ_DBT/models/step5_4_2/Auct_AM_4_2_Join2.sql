

with addr2 as(
    select * from stg.[Auct_Address_FinalView]
),
join1 as (
    select * from  stg.[Auct_AM_4_1_Join1]

) 
SELECT 
                    join1.[CustomerAccountID],
                    join1.[CurrentCompanyID],
                    join1.[AddressID],
                    join1.[Address],
                    join1.[City],
                    join1.[StateProvince],
                    join1.[PostalCode],

                    country.[Name] AS [Country], -- (Update) country.[Country],
                    addrty.[Name] AS [AddressType], -- (Update) addrty.[AddressType],

                    join1.[AddressStatus],
                    join1.[IsDefaultAddress],
                    join1.[IsActiveAddress], 

                    ISNULL(join1.[Created], (SELECT TOP 1 addr2.[Created] FROM addr2 WHERE addr2.[AddressID]<join1.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC)) AS [CreatedAddress1]
                    
                FROM join1  -- need replace stg.[Auct_Address_FinalView] with [Auct_Address_Cleaning_stg]
               
                LEFT JOIN stg.[Auct_Country_FinalView] country -- need replace [Auct_Country_Ex] with [Auct_Country]
                    ON join1.[Country]=country.[CountryID] -- (Update) ON join1.[CountryID]=country.[CountryID]
                LEFT JOIN stg.[Auct_AddressTypes_FinalView] addrty -- need replace [Auct_AddressTypes_Ex] with [Auct_AddressTypes]
                    ON join1.[AddressTypeID]=addrty.[AddressTypeID]