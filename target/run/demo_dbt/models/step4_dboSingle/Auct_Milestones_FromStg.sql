
  
  if object_id ('"dbo"."Auct_Milestones_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Milestones_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Milestones_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Milestones_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Milestones_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MilestoneID] as int) [MilestoneID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([MilestoneTime] as datetime) [MilestoneTime],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([MilestoneComments] as nvarchar(4000)) [MilestoneComments] 
From stg.[Auct_Milestones_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Milestones_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Milestones_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Milestones_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Milestones_FromStg__dbt_tmp_temp_view"
    end


