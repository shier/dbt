
Select
	cast(distribution_jobid as nvarchar(4000)) Distribution_JobID,
	cast(timestamp as nvarchar(4000)) TimeStamp,
	loopback_detection Loopback_Detection,
	queued_reinit Queued_reinit,
	artid ArtID,
	srvid SrvID,
	status Status,
	sync_type Sync_Type,
	subscription_type SubScription_Type,
	update_mode Update_Mode,
	nosync_type NoSync_Type,
	cast(dest_db as nvarchar(4000)) Dest_Db,
	cast(login_name as nvarchar(4000)) Login_Name,
	cast(srvname as nvarchar(4000)) SrvName
From Auct_SysSubScriptions_Raw