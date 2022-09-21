
  
  if object_id ('"dbo"."Auct_SysPublications__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysPublications__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysPublications__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysPublications__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysPublications__dbt_tmp_temp_view as
    
Select
	cast([Description] as nvarchar(4000)) [description],
	cast([Name] as nvarchar(4000)) [name],
	cast([PubID] as int) [pubid],
	cast([Repl_Freq] as int) [repl_freq],
	cast([Status] as int) [status],
	cast([Sync_Method] as int) [sync_method],
	cast([Snapshot_JobID] as varbinary(8000)) [snapshot_jobid],
	cast([Retention] as int) [retention],
	cast([Alt_Snapshot_Folder] as nvarchar(4000)) [alt_snapshot_folder],
	cast([Pre_Snapshot_Script] as nvarchar(4000)) [pre_snapshot_script],
	cast([Post_Snapshot_Script] as nvarchar(4000)) [post_snapshot_script],
	cast([Ftp_Address] as nvarchar(4000)) [ftp_address],
	cast([Ftp_Port] as int) [ftp_port],
	cast([Ftp_SubDirectory] as nvarchar(4000)) [ftp_subdirectory],
	cast([Ftp_Login] as nvarchar(4000)) [ftp_login],
	cast([Ftp_Password] as nvarchar(4000)) [ftp_password],
	cast([Conflict_Retention] as int) [conflict_retention],
	cast([Conflict_Policy] as int) [conflict_policy],
	cast([Queue_Type] as int) [queue_type],
	cast([Ad_GUIDName] as nvarchar(4000)) [ad_guidname],
	cast([Backward_Comp_Level] as int) [backward_comp_level],
	cast([Min_AutonoSync_lsn] as varbinary(8000)) [min_autonosync_lsn],
	cast([Replicate_Ddl] as int) [replicate_ddl],
	cast([Options] as int) [options],
	cast([Originator_ID] as int) [originator_id],
	cast([IndepEndent_Agent] as bit) [independent_agent],
	cast([Allow_SubScription_Copy] as bit) [allow_subscription_copy],
	cast([Centralized_Conflicts] as bit) [centralized_conflicts],
	cast([Allow_Initialize_From_Backup] as bit) [allow_initialize_from_backup],
	cast([Allow_Sync_Tran] as bit) [allow_sync_tran],
	cast([Autogen_Sync_Procs] as bit) [autogen_sync_procs],
	cast([Allow_Queued_Tran] as bit) [allow_queued_tran],
	cast([Snapshot_In_DefaultFolder] as bit) [snapshot_in_defaultfolder],
	cast([Compress_Snapshot] as bit) [compress_snapshot],
	cast([Allow_Dts] as bit) [allow_dts],
	cast([Immediate_Sync] as bit) [immediate_sync],
	cast([Enabled_For_Internet] as bit) [enabled_for_internet],
	cast([Allow_Push] as bit) [allow_push],
	cast([Allow_Pull] as bit) [allow_pull],
	cast([Allow_Anonymous] as bit) [allow_anonymous],
	cast([Immediate_Sync_Ready] as bit) [immediate_sync_ready] 
From stg.[Auct_SysPublications_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysPublications__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysPublications__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysPublications__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysPublications__dbt_tmp_temp_view"
    end


