
  
  if object_id ('"stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp"
    end


   EXEC('create view stg.Auct_Customer_Archive_BR_Step1__dbt_tmp_temp_view as
    
-- Auct_CA_ValidDateRanges
With ValidDates AS (
    SELECT [CustomerAccountID], [EffectiveStartDate] AS [Date] FROM [stg].[Auct_Email_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveEndDate] AS [Date] FROM [stg].[Auct_Email_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveStartDate] AS [Date] FROM [stg].[Auct_Phone_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveEndDate] AS [Date] FROM [stg].[Auct_Phone_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveStartDate] AS [Date] FROM [stg].[Auct_Address_Merge_NoNull]
    UNION
    SELECT [CustomerAccountID], [EffectiveEndDate] AS [Date] FROM [stg].[Auct_Address_Merge_NoNull]
),
list as (
 SELECT 
        [CustomerAccountID],
        [EffectiveStartDate],
        [EffectiveEndDate]
    FROM (
        SELECT 
            [CustomerAccountID],
            [Date] AS [EffectiveStartDate],
            LEAD([Date], 1) OVER(
                                PARTITION BY [CustomerAccountID]
                                ORDER BY [Date]
            ) AS [EffectiveEndDate]
        FROM ValidDates
        ) AS temp1
    WHERE [EffectiveEndDate] IS NOT NULL 

)

select * from list
    ');

  CREATE TABLE "stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Customer_Archive_BR_Step1__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customer_Archive_BR_Step1__dbt_tmp_temp_view"
    end


