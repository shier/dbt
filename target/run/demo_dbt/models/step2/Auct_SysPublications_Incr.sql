
      
  
  if object_id ('"stg"."Auct_SysPublications_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysPublications_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysPublications_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysPublications_Incr"
    end


   EXEC('create view stg.Auct_SysPublications_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Description, Name, Alt_Snapshot_Folder, Pre_Snapshot_Script, Post_Snapshot_Script, Ftp_Address, Ftp_SubDirectory, Ftp_Login, Ftp_Password, Ad_GUIDName, Cast(Snapshot_JobID as varchar), Cast(Min_AutonoSync_lsn as varchar), Cast(Originator_ID as varchar), Cast(Conflict_Retention as varchar), Cast(Conflict_Policy as varchar), Cast(Queue_Type as varchar), Cast(Backward_Comp_Level as varchar), Cast(Replicate_Ddl as varchar), Cast(Options as varchar), Cast(Repl_Freq as varchar), Cast(Status as varchar), Cast(Sync_Method as varchar), Cast(Retention as varchar), Cast(Ftp_Port as varchar), Cast(Allow_Anonymous as varchar), Cast(Immediate_Sync_Ready as varchar), Cast(Allow_Sync_Tran as varchar), Cast(Autogen_Sync_Procs as varchar), Cast(Allow_Queued_Tran as varchar), Cast(Snapshot_In_DefaultFolder as varchar), Cast(IndepEndent_Agent as varchar), Cast(Immediate_Sync as varchar), Cast(Enabled_For_Internet as varchar), Cast(Allow_Push as varchar), Cast(Allow_Pull as varchar), Cast(Compress_Snapshot as varchar), Cast(Allow_Dts as varchar), Cast(Allow_SubScription_Copy as varchar), Cast(Centralized_Conflicts as varchar), Cast(Allow_Initialize_From_Backup as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysPublications_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysPublications_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysPublications_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysPublications_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysPublications_Incr_temp_view"
    end



  