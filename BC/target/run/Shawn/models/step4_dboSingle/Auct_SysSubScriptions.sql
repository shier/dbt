
  
  if object_id ('"dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysSubScriptions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysSubScriptions__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysSubScriptions__dbt_tmp_temp_view as
    
Select
	cast([Loopback_Detection] as bit) [loopback_detection],
	cast([Queued_reinit] as bit) [queued_reinit],
	cast([ArtID] as int) [artid],
	cast([SrvID] as int) [srvid],
	cast([Dest_Db] as nvarchar(4000)) [dest_db],
	cast([Status] as int) [status],
	cast([Sync_Type] as int) [sync_type],
	cast([Login_Name] as nvarchar(4000)) [login_name],
	cast([SubScription_Type] as int) [subscription_type],
	cast([Distribution_JobID] as varbinary(8000)) [distribution_jobid],
	cast([TimeStamp] as varbinary(8000)) [timestamp],
	cast([Update_Mode] as int) [update_mode],
	cast([NoSync_Type] as int) [nosync_type],
	cast([SrvName] as nvarchar(4000)) [srvname] 
From stg.[Auct_SysSubScriptions_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysSubScriptions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysSubScriptions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"
    end


