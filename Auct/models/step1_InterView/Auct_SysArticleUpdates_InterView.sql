{{ config(materialized='view',schema='stg')}}
Select
	[identity_support] [IDEntity_Support],
	[autogen] [Autogen],
	[artid] [ArtID],
	[pubid] [PubID],
	[sync_ins_proc] [Sync_Ins_Proc],
	[sync_upd_proc] [Sync_upd_Proc],
	[sync_del_proc] [Sync_Del_Proc],
	[sync_upd_trig] [Sync_upd_Trig],
	[conflict_tableid] [Conflict_TableID],
	[ins_conflict_proc] [Ins_Conflict_Proc]
From stg.[Auct_SysArticleUpdates_Raw]
