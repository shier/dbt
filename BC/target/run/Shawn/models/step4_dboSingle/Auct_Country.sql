
  
  if object_id ('"dbo"."Auct_Country__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Country__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Country__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Country__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Country__dbt_tmp_temp_view as
    
Select
	cast([CountryID] as int) [COUNTRYID],
	cast([Name] as varchar(128)) [NAME],
	cast([CountryCode] as int) [COUNTRYCODE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DisplayOrder] as int) [DISPLAYORDER],
	cast([SynchID] as varchar(50)) [SYNCHID] 
From stg.[Auct_Country_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Country__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Country__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Country__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Country__dbt_tmp_temp_view"
    end


