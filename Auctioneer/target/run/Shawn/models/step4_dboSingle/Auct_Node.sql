
  
  if object_id ('"dbo"."Auct_Node__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Node__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Node__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Node__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Node__dbt_tmp_temp_view as
    
Select
	cast([NodeID] as int) [NODEID],
	cast([NodeTreeID] as int) [NODETREEID],
	cast([Left] as int) [LEFT],
	cast([Right] as int) [RIGHT],
	cast([ContentID] as int) [CONTENTID] 
From stg.[Auct_Node_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Node__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Node__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Node__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Node__dbt_tmp_temp_view"
    end


