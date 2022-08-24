
  
  if object_id ('"dbo"."Auct_MediaType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaType__dbt_tmp_temp_view as
    
Select
	cast([MediaTypeID] as int) [MediaTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaType__dbt_tmp_temp_view"
    end


