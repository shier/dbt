
  
  if object_id ('"stg"."AH_Customcurrencies_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Customcurrencies_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Customcurrencies_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Customcurrencies_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Customcurrencies_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([ISOCurrencySymbol] as nvarchar(4000)) [Isocurrencysymbol],
	cast([CurrencySymbol] as nvarchar(4000)) [Currencysymbol],
	cast([CurrencyEnglishName] as nvarchar(4000)) [CurrencyenglishName],
	cast([CurrencyNativeName] as nvarchar(4000)) [CurrencynativeName]
From stg.[AH_Customcurrencies_Raw]
    ');

  CREATE TABLE "stg"."AH_Customcurrencies_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Customcurrencies_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Customcurrencies_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Customcurrencies_Inter__dbt_tmp_temp_view"
    end


