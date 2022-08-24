
  
  if object_id ('"dbo"."Auct_Company__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Company__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Company__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Company__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Company__dbt_tmp_temp_view as
    
Select
	cast([CompanyID] as int) [CompanyID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([IndustryTypeID] as int) [IndustryTypeID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([URL] as nvarchar(4000)) [URL],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Company_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Company__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Company__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Company__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Company__dbt_tmp_temp_view"
    end


