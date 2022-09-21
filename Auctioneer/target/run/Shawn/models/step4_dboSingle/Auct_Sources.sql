
  
  if object_id ('"dbo"."Auct_Sources__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Sources__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Sources__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Sources__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Sources__dbt_tmp_temp_view as
    
Select
	cast([WebActive] as bit) [WEBACTIVE],
	cast([SourceID] as int) [SOURCEID],
	cast([SourceName] as nvarchar(4000)) [SOURCENAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as nvarchar(4000)) [ACTIVE],
	cast([DisplayOrder] as int) [DISPLAYORDER] 
From stg.[Auct_Sources_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Sources__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Sources__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Sources__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Sources__dbt_tmp_temp_view"
    end


