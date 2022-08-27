

    SELECT 
        emailmrg.[CustomerAccountID],
        emailmrg.[ContactID],
        emailmrg.[EmailAddress],
        emailmrg.[IsActiveEmail],
        emailmrg.[EmailBlastOptIn],
    
        vdrstg.[EffectiveStartDate],
        vdrstg.[EffectiveEndDate]
        -- emailmrg.[IsCurrent] AS [IsCurrentEmail],
        -- phmrg.[IsCurrent] AS [IsCurrentPhone],
        -- addrmrg.[IsCurrent] AS [IsCurrentAddress], 
    FROM stg.[Auct_CA_ValidDateRanges] vdrstg 
       
    LEFT JOIN [stg].[Auct_Email_Merge] emailmrg
        ON vdrstg.[CustomerAccountID]=emailmrg.[CustomerAccountID]
            AND emailmrg.[EffectiveEndDate]>vdrstg.[EffectiveStartDate]
            AND emailmrg.[EffectiveStartDate]<vdrstg.[EffectiveEndDate] 
   
    WHERE emailmrg.[EmailAddress] IS NOT NULL