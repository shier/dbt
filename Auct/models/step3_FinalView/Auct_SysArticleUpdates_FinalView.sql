{{ config(materialized='view',schema='stg')}}
Select
	[IDEntity_Support],[Autogen],[ArtID],[PubID],[Sync_Ins_Proc],[Sync_upd_Proc],[Sync_Del_Proc],[Sync_upd_Trig],[Conflict_TableID],[Ins_Conflict_Proc] 
From [Auct_SysArticleUpdates_Incr]