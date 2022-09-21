
Select
	cast([IDEntity_Support] as bit) [identity_support],
	cast([Autogen] as bit) [autogen],
	cast([ArtID] as int) [artid],
	cast([PubID] as int) [pubid],
	cast([Sync_Ins_Proc] as int) [sync_ins_proc],
	cast([Sync_upd_Proc] as int) [sync_upd_proc],
	cast([Sync_Del_Proc] as int) [sync_del_proc],
	cast([Sync_upd_Trig] as int) [sync_upd_trig],
	cast([Conflict_TableID] as int) [conflict_tableid],
	cast([Ins_Conflict_Proc] as int) [ins_conflict_proc] 
From stg.[Auct_SysArticleUpdates_FinalView]