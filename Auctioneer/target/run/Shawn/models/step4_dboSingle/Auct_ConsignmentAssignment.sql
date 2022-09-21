
  
  if object_id ('"dbo"."Auct_ConsignmentAssignment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentAssignment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentAssignment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentAssignment__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentAssignment__dbt_tmp_temp_view as
    
Select
	cast([AssignID] as nvarchar(4000)) [AssignID],
	cast([UserID] as int) [UserID],
	cast([Text] as nvarchar(4000)) [Text],
	cast([PriorityID] as int) [PriorityID],
	cast([DateCreated] as DATETIME) [DateCreated] 
From stg.[Auct_ConsignmentAssignment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentAssignment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentAssignment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentAssignment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentAssignment__dbt_tmp_temp_view"
    end


