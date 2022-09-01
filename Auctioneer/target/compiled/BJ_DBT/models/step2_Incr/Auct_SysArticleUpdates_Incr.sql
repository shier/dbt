
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([IDEntity_Support] as varchar), Cast([Autogen] as varchar), Cast([ArtID] as varchar), Cast([PubID] as varchar), Cast([Sync_Ins_Proc] as varchar), Cast([Sync_upd_Proc] as varchar), Cast([Sync_Del_Proc] as varchar), Cast([Sync_upd_Trig] as varchar), Cast([Conflict_TableID] as varchar), Cast([Ins_Conflict_Proc] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticleUpdates_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_SysArticleUpdates_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
