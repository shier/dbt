
  
  if object_id ('"dbo"."Auct_StateProvince__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_StateProvince__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_StateProvince__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_StateProvince__dbt_tmp"
    end


   EXEC('create view dbo.Auct_StateProvince__dbt_tmp_temp_view as
    
Select
	cast([Abbreviation] as nvarchar(4000)) [Abbreviation],
	cast([FullName] as nvarchar(4000)) [FullName],
	cast([CountryID] as int) [CountryID],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_StateProvince_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_StateProvince__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_StateProvince__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_StateProvince__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_StateProvince__dbt_tmp_temp_view"
    end


