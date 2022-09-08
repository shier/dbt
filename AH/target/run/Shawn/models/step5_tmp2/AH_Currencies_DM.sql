
  
  if object_id ('"stg"."AH_Currencies_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Currencies_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Currencies_DM__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Currencies_DM__dbt_tmp"
    end


   EXEC('create view stg.AH_Currencies_DM__dbt_tmp_temp_view as
    
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

  CREATE TABLE "stg"."AH_Currencies_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Currencies_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Currencies_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Currencies_DM__dbt_tmp_temp_view"
    end


