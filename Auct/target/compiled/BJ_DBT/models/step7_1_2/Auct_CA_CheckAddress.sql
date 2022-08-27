

    SELECT 
        addrmrg.[CustomerAccountID],
        
        addrmrg.[CurrentCompanyID],
        addrmrg.[AddressID],
        -- addrmrg.[AddressType],
        -- addrmrg.[Address],
        addrmrg.[HomeAddress], 
        addrmrg.[BusinessAddress], 
        addrmrg.[LocalAddress], 
        addrmrg.[DealerAddress], 
        addrmrg.[MailingAddress],
        addrmrg.[City],
        addrmrg.[State],
        addrmrg.[PostalCode],
        addrmrg.[Country],
        addrmrg.[AddressStatus],
        addrmrg.[IsDefaultAddress],
        addrmrg.[IsActiveAddress],
        vdrstg.[EffectiveStartDate],
        vdrstg.[EffectiveEndDate]

    FROM [stg].[Auct_Address_Merge] addrmrg
    INNER JOIN stg.[Auct_CA_ValidDateRanges] vdrstg 
        ON vdrstg.[CustomerAccountID]=addrmrg.[CustomerAccountID]
            AND addrmrg.[EffectiveEndDate]>vdrstg.[EffectiveStartDate]
            AND  addrmrg.[EffectiveStartDate]<vdrstg.[EffectiveEndDate]
    
    WHERE COALESCE(addrmrg.[HomeAddress], addrmrg.[BusinessAddress], addrmrg.[LocalAddress], addrmrg.[DealerAddress], addrmrg.[MailingAddress]) IS NOT NULL