
  
  if object_id ('"dbo"."Auct_Node_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Node_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Node_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Node_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Node_FromStg__dbt_tmp_temp_view as
    
Select
	cast([NodeID] as int) [NodeID],
	cast([NodeTreeID] as int) [NodeTreeID],
	cast([Left] as int) [Left],
	cast([Right] as int) [Right],
	cast([ContentID] as int) [ContentID] 
From stg.[Auct_Node_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Node_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Node_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Node_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Node_FromStg__dbt_tmp_temp_view"
    end


