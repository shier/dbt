create view "stg"."Auct_SysArticleUpdates_FinalView__dbt_tmp" as
    
Select
	[IDEntity_Support],[Autogen],[ArtID],[PubID],[Sync_Ins_Proc],[Sync_upd_Proc],[Sync_Del_Proc],[Sync_upd_Trig],[Conflict_TableID],[Ins_Conflict_Proc] 
From [Auct_SysArticleUpdates_Incr] 
Where [dbt_valid_to] is null
