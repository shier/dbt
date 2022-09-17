
  
  if object_id ('"dbo"."AH_Customcurrencies__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Customcurrencies__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Customcurrencies__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Customcurrencies__dbt_tmp"
    end


   EXEC('create view dbo.AH_Customcurrencies__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Isocurrencysymbol] as nvarchar(4000)) [Isocurrencysymbol],
	cast([Currencysymbol] as nvarchar(4000)) [Currencysymbol],
	cast([CurrencyenglishName] as nvarchar(4000)) [CurrencyenglishName],
	cast([CurrencynativeName] as nvarchar(4000)) [CurrencynativeName] 
From stg.[AH_Customcurrencies_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Customcurrencies__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Customcurrencies__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Customcurrencies__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Customcurrencies__dbt_tmp_temp_view"
    end


