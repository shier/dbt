
  
  if object_id ('"stg"."Auct_CA_CheckAddress__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_CheckAddress__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CA_CheckAddress__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CA_CheckAddress__dbt_tmp"
    end


   EXEC('create view stg.Auct_CA_CheckAddress__dbt_tmp_temp_view as
    

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
    ');

  CREATE TABLE "stg"."Auct_CA_CheckAddress__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CA_CheckAddress__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CA_CheckAddress__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CA_CheckAddress__dbt_tmp_temp_view"
    end


