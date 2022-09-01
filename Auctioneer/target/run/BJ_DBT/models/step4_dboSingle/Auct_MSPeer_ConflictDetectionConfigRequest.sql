
  
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Publication] as nvarchar(4000)) [Publication],
	cast([Sent_Date] as datetime) [Sent_Date],
	cast([TimeOut] as int) [TimeOut],
	cast([Modified_Date] as datetime) [Modified_Date],
	cast([Progress_Phase] as nvarchar(4000)) [Progress_Phase],
	cast([Phase_Timed_Out] as bit) [Phase_Timed_Out] 
From stg.[Auct_MSPeer_ConflictDetectionConfigRequest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"
    end


