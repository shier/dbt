
  
  if object_id ('"dbo"."Auct_NavisionVendorBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionVendorBuffer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionVendorBuffer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionVendorBuffer__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionVendorBuffer__dbt_tmp_temp_view as
    
Select
	cast([No] as nvarchar(4000)) [NO],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Name2] as nvarchar(4000)) [NAME2],
	cast([Address] as nvarchar(4000)) [ADDRESS],
	cast([Address2] as nvarchar(4000)) [ADDRESS2],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([CountryCode] as nvarchar(4000)) [COUNTRYCODE],
	cast([PostalCode] as nvarchar(4000)) [POSTALCODE],
	cast([Phoneno] as nvarchar(4000)) [PHONENO],
	cast([Email] as nvarchar(4000)) [EMAIL],
	cast([HomePage] as nvarchar(4000)) [HOMEPAGE],
	cast([Taxliable] as int) [TAXLIABLE],
	cast([FederalIDno] as nvarchar(4000)) [FEDERALIDNO],
	cast([1099Code] as nvarchar(4000)) [1099CODE],
	cast([Status] as int) [STATUS],
	cast([StatusMessage] as nvarchar(4000)) [STATUSMESSAGE],
	cast([WrotetoNavision] as int) [WROTETONAVISION] 
From stg.[Auct_NavisionVendorBuffer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionVendorBuffer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionVendorBuffer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionVendorBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionVendorBuffer__dbt_tmp_temp_view"
    end


