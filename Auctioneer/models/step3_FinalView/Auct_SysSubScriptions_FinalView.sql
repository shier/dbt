{{ config(materialized='view',schema='stg')}}
Select
	[Loopback_Detection],[Queued_reinit],[ArtID],[SrvID],[Dest_Db],[Status],[Sync_Type],[Login_Name],[SubScription_Type],[Distribution_JobID],[TimeStamp],[Update_Mode],[NoSync_Type],[SrvName] 
From [Auct_SysSubScriptions_Incr]