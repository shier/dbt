{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Fire_Triggers_On_Snapshot] as varchar), Cast([ArtID] as varchar), [Creation_Script], [Del_Cmd], [Description], [Dest_Table], Cast([Filter] as varchar), [Filter_Clause], [Ins_Cmd], [Name], Cast([OBJID] as varchar), Cast([PubID] as varchar), Cast([Pre_Creation_cmd] as varchar), Cast([Status] as varchar), Cast([Sync_OBJID] as varchar), Cast([Type] as varchar), [Upd_Cmd], Cast([SchEMA_Option] as varchar), [Dest_Owner], Cast([Ins_Scripting_Proc] as varchar), Cast([Del_Scripting_Proc] as varchar), Cast([Upd_Scripting_Proc] as varchar), [Custom_Script])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticles_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
