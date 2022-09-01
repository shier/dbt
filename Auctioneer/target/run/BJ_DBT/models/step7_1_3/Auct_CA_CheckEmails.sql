
  
  if object_id ('"stg"."Auct_CA_CheckEmails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_CheckEmails__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CA_CheckEmails__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CA_CheckEmails__dbt_tmp"
    end


   EXEC('create view stg.Auct_CA_CheckEmails__dbt_tmp_temp_view as
    

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
    ');

  CREATE TABLE "stg"."Auct_CA_CheckEmails__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CA_CheckEmails__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CA_CheckEmails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_CheckEmails__dbt_tmp_temp_view"
    end


