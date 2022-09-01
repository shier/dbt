


    SELECT 
        [CustomerAccountID],
        [CurrentCompanyID],
        [AddressID],
        -- [AddressType],
        -- [Address],
         [home_Address] as [HomeAddress], 
        [business_Address] as [BusinessAddress], 
        [local_Address] as [LocalAddress], 
        [dealer_Address] as [DealerAddress], 
        [mailing_Address] as [MailingAddress],
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
    FROM stg.[Auct_AM_Pivot_NoNull]