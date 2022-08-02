{{ config(materialized='view',schema='stg')}}
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
