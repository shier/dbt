
  
  if object_id ('"dbo"."Auct_Phone__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Phone__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Phone__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Phone__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Phone__dbt_tmp_temp_view as
    
Select
	cast([PhoneID] as int) [PHONEID],
	cast([CountryID] as int) [COUNTRYID],
	cast([AreaCode] as varchar(5)) [AREACODE],
	cast([PhoneNumber] as nvarchar(40)) [PHONENUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE],
	cast([WebPhoneID] as uniqueidentifier) [WEBPHONEID] 
From stg.[Auct_Phone_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Phone__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Phone__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Phone__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Phone__dbt_tmp_temp_view"
    end


