
  
  if object_id ('"stg"."Auct_SysSubScriptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysSubScriptions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysSubScriptions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysSubScriptions_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysSubScriptions_Inter__dbt_tmp_temp_view as
    
Select
	[loopback_detection] [Loopback_Detection],
	[queued_reinit] [Queued_reinit],
	[artid] [ArtID],
	[srvid] [SrvID],
	cast([dest_db] as nvarchar(4000)) [Dest_Db],
	[status] [Status],
	[sync_type] [Sync_Type],
	cast([login_name] as nvarchar(4000)) [Login_Name],
	[subscription_type] [SubScription_Type],
	cast([distribution_jobid] as nvarchar(4000)) [Distribution_JobID],
	cast([timestamp] as nvarchar(4000)) [TimeStamp],
	[update_mode] [Update_Mode],
	[nosync_type] [NoSync_Type],
	cast([srvname] as nvarchar(4000)) [SrvName]
From stg.[Auct_SysSubScriptions_Raw]
    ');

  CREATE TABLE "stg"."Auct_SysSubScriptions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysSubScriptions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysSubScriptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysSubScriptions_Inter__dbt_tmp_temp_view"
    end


