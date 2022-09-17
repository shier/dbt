
  
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionCustomerBuffer__dbt_tmp_temp_view as
    
Select
	cast([No] as nvarchar(4000)) [NO],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Name2] as nvarchar(4000)) [NAME2],
	cast([Address] as nvarchar(4000)) [ADDRESS],
	cast([Address2] as nvarchar(4000)) [ADDRESS2],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([CountryCode] as nvarchar(4000)) [COUNTRYCODE],
	cast([PostCode] as nvarchar(4000)) [POSTCODE],
	cast([Phoneno] as nvarchar(4000)) [PHONENO],
	cast([Email] as nvarchar(4000)) [EMAIL],
	cast([HomePage] as nvarchar(4000)) [HOMEPAGE],
	cast([Status] as int) [STATUS],
	cast([StatusMessage] as nvarchar(4000)) [STATUSMESSAGE],
	cast([WrotetoNavision] as int) [WROTETONAVISION] 
From stg.[Auct_NavisionCustomerBuffer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionCustomerBuffer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionCustomerBuffer__dbt_tmp_temp_view"
    end


