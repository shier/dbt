
  
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
	cast([PubID] as int) [PubID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Repl_Freq] as int) [Repl_Freq],
	cast([Status] as int) [Status],
	cast([Sync_Method] as int) [Sync_Method],
	cast([Snapshot_JobID] as varbinary(8000)) [Snapshot_JobID],
	cast([Retention] as int) [Retention],
	cast([Alt_Snapshot_Folder] as nvarchar(4000)) [Alt_Snapshot_Folder],
	cast([Pre_Snapshot_Script] as nvarchar(4000)) [Pre_Snapshot_Script],
	cast([Post_Snapshot_Script] as nvarchar(4000)) [Post_Snapshot_Script],
	cast([Ftp_Address] as nvarchar(4000)) [Ftp_Address],
	cast([Ftp_Port] as int) [Ftp_Port],
	cast([Ftp_SubDirectory] as nvarchar(4000)) [Ftp_subDirectory],
	cast([Ftp_Login] as nvarchar(4000)) [Ftp_Login],
	cast([Ftp_Password] as nvarchar(4000)) [Ftp_Password],
	cast([Conflict_Retention] as int) [Conflict_Retention],
	cast([Conflict_Policy] as int) [Conflict_Policy],
	cast([Queue_Type] as int) [Queue_Type],
	cast([Ad_GUIDName] as nvarchar(4000)) [Ad_GUIDName],
	cast([Backward_Comp_Level] as int) [Backward_Comp_Level],
	cast([Min_AutonoSync_lsn] as varbinary(8000)) [Min_autonoSync_lsn],
	cast([Replicate_Ddl] as int) [Replicate_ddl],
	cast([Options] as int) [Options],
	cast([Originator_ID] as int) [Originator_ID],
	cast([IndepEndent_Agent] as bit) [IndepEndent_Agent],
	cast([Allow_SubScription_Copy] as bit) [Allow_SubScription_Copy],
	cast([Centralized_Conflicts] as bit) [Centralized_Conflicts],
	cast([Allow_Initialize_From_Backup] as bit) [Allow_Initialize_From_Backup],
	cast([Allow_Sync_Tran] as bit) [Allow_Sync_Tran],
	cast([Autogen_Sync_Procs] as bit) [Autogen_Sync_procs],
	cast([Allow_Queued_Tran] as bit) [Allow_Queued_Tran],
	cast([Snapshot_In_DefaultFolder] as bit) [Snapshot_in_DefaultFolder],
	cast([Compress_Snapshot] as bit) [Compress_Snapshot],
	cast([Allow_Dts] as bit) [Allow_dts],
	cast([Immediate_Sync] as bit) [Immediate_Sync],
	cast([Enabled_For_Internet] as bit) [Enabled_For_Internet],
	cast([Allow_Push] as bit) [Allow_Push],
	cast([Allow_Pull] as bit) [Allow_Pull],
	cast([Allow_Anonymous] as bit) [Allow_Anonymous],
	cast([Immediate_Sync_Ready] as bit) [Immediate_Sync_Ready] 
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


