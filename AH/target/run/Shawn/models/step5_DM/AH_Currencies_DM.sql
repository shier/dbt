
  
  if object_id ('"dbo"."AH_Currencies_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Currencies_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Currencies_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Currencies_DM__dbt_tmp"
    end


   EXEC('create view dbo.AH_Currencies_DM__dbt_tmp_temp_view as
    
SELECT
	[Id] AS [CurrencyId],
	[ConversionToUSD],
	[Code],
	[LastUpdatedUser],
	[CreatedOn] AS [CreatedDate],
	[UpdatedOn] AS [UpdatedDate],
	[DeletedOn] AS [DeletedDate]
FROM [stg].[AH_Currencies_FinalView];
    ');

  CREATE TABLE "dbo"."AH_Currencies_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Currencies_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Currencies_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Currencies_DM__dbt_tmp_temp_view"
    end


