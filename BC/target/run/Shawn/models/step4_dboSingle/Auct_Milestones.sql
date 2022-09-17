
  
  if object_id ('"dbo"."Auct_Milestones__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Milestones__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Milestones__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Milestones__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Milestones__dbt_tmp_temp_view as
    
Select
	cast([MilestoneID] as int) [MILESTONEID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([MilestoneTime] as datetime) [MILESTONETIME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([MilestoneComments] as nvarchar(4000)) [MILESTONECOMMENTS] 
From stg.[Auct_Milestones_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Milestones__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Milestones__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Milestones__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Milestones__dbt_tmp_temp_view"
    end


