{{ config(materialized='table',schema='dbo')}}
Select
	cast([IDEntity_Support] as bit) [IDEntity_supPort],
	cast([Autogen] as bit) [Autogen],
	cast([ArtID] as int) [ArtID],
	cast([PubID] as int) [PuBid],
	cast([Sync_Ins_Proc] as int) [Sync_ins_proc],
	cast([Sync_upd_Proc] as int) [Sync_upd_proc],
	cast([Sync_Del_Proc] as int) [Sync_del_proc],
	cast([Sync_upd_Trig] as int) [Sync_upd_trig],
	cast([Conflict_TableID] as int) [Conflict_TableID],
	cast([Ins_Conflict_Proc] as int) [Ins_Conflict_proc] 
From stg.[Auct_SysArticleUpdates_FinalView]