
  
  if object_id ('"stg"."Auct_Address_Merge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Merge__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Address_Merge__dbt_tmp"
    end


   EXEC('create view stg.Auct_Address_Merge__dbt_tmp_temp_view as
    


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
        CASE WHEN [NewRowNumber]=''1'' 
            THEN ''1''
        ELSE ''0''
        END AS [IsCurrent] 
    FROM stg.[Auct_AM_Pivot_NoNull]
    ');

  CREATE TABLE "stg"."Auct_Address_Merge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Merge__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Merge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge__dbt_tmp_temp_view"
    end


