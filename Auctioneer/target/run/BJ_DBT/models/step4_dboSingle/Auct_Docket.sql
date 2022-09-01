
  
  if object_id ('"dbo"."Auct_Docket__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Docket__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Docket__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Docket__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Docket__dbt_tmp_temp_view as
    
Select
	cast([DocketID] as int) [DocketID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([LotStatus] as varchar(64)) [LotStatus],
	cast([TargetTime] as datetime) [TargetDateTime],
	cast([ActualTime] as datetime) [ActualDateTime],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([LaneNumber] as int) [LaneNumber] 
From stg.[Auct_Docket_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Docket__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Docket__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Docket__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Docket__dbt_tmp_temp_view"
    end


