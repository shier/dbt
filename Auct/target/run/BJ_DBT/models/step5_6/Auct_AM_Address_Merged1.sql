
  
  if object_id ('"stg"."Auct_AM_Address_Merged1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AM_Address_Merged1__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AM_Address_Merged1__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AM_Address_Merged1__dbt_tmp"
    end


   EXEC('create view stg.Auct_AM_Address_Merged1__dbt_tmp_temp_view as
    
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
        ISNULL([EffectiveEndDate], ''9999-12-31'') AS [EffectiveEndDate]
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
        FROM  
             stg.[Auct_AM_4_Temp2]
        WHERE [RowNumber]=1
        ) AS temp3
    ');

  CREATE TABLE "stg"."Auct_AM_Address_Merged1__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AM_Address_Merged1__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AM_Address_Merged1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AM_Address_Merged1__dbt_tmp_temp_view"
    end


