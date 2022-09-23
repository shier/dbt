{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([Description], [Name], Cast([PubID] as varchar), Cast([Repl_Freq] as varchar), Cast([Status] as varchar), Cast([Sync_Method] as varchar), Cast([Snapshot_JobID] as varchar), Cast([Retention] as varchar), [Alt_Snapshot_Folder], [Pre_Snapshot_Script], [Post_Snapshot_Script], [Ftp_Address], Cast([Ftp_Port] as varchar), [Ftp_SubDirectory], [Ftp_Login], [Ftp_Password], Cast([Conflict_Retention] as varchar), Cast([Conflict_Policy] as varchar), Cast([Queue_Type] as varchar), [Ad_GUIDName], Cast([Backward_Comp_Level] as varchar), Cast([Min_AutonoSync_lsn] as varchar), Cast([Replicate_Ddl] as varchar), Cast([Options] as varchar), Cast([Originator_ID] as varchar), Cast([IndepEndent_Agent] as varchar), Cast([Allow_SubScription_Copy] as varchar), Cast([Centralized_Conflicts] as varchar), Cast([Allow_Initialize_From_Backup] as varchar), Cast([Allow_Sync_Tran] as varchar), Cast([Autogen_Sync_Procs] as varchar), Cast([Allow_Queued_Tran] as varchar), Cast([Snapshot_In_DefaultFolder] as varchar), Cast([Compress_Snapshot] as varchar), Cast([Allow_Dts] as varchar), Cast([Immediate_Sync] as varchar), Cast([Enabled_For_Internet] as varchar), Cast([Allow_Push] as varchar), Cast([Allow_Pull] as varchar), Cast([Allow_Anonymous] as varchar), Cast([Immediate_Sync_Ready] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SysPublications_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
