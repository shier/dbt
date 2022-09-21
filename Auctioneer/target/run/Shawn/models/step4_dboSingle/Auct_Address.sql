
  
  if object_id ('"dbo"."Auct_Address__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Address__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Address__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Address__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Address__dbt_tmp_temp_view as
    
Select
	cast([AddressID] as int) [ADDRESSID],
	cast([Address1] as nvarchar(256)) [ADDRESS1],
	cast([Address2] as nvarchar(256)) [ADDRESS2],
	cast([City] as nvarchar(100)) [CITY],
	cast([StateProvince] as nvarchar(50)) [STATEPROVINCE],
	cast([PostalCode] as nvarchar(50)) [POSTALCODE],
	cast([Country] as int) [COUNTRY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Careof] as varchar(100)) [CAREOF],
	cast([Active] as bit) [ACTIVE],
	cast([County] as nvarchar(100)) [COUNTY]
	-- cast([WeBaddressID] as uniqueidentifier) [WEBADDRESSID] 
From stg.[Auct_Address_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Address__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Address__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Address__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Address__dbt_tmp_temp_view"
    end


