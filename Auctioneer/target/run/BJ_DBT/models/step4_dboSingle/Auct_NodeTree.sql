
  
  if object_id ('"dbo"."Auct_NodeTree__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NodeTree__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NodeTree__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NodeTree__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NodeTree__dbt_tmp_temp_view as
    
Select
	cast([NodeTreeID] as int) [NodeTreeID],
	cast([NodeTreeTypeID] as int) [NodeTreeTypeID],
	cast([Active] as int) [Active] 
From stg.[Auct_NodeTree_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NodeTree__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NodeTree__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NodeTree__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NodeTree__dbt_tmp_temp_view"
    end


