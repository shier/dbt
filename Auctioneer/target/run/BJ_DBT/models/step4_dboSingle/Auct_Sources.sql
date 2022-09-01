
  
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
	cast([SourceID] as int) [SourceID],
	cast([WebActive] as bit) [WebActive],
	cast([SourceName] as nvarchar(4000)) [SourceName],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as nvarchar(4000)) [Active],
	cast([DisplayOrder] as int) [DisplayOrder] 
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


