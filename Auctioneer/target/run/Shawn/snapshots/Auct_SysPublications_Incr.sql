
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_SysPublications_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_SysPublications_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_SysPublications_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_SysPublications_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_SysPublications_Incr" (
                  "PubID", "Description", "Name", "Repl_Freq", "Status", "Sync_Method", "Snapshot_JobID", "Retention", "Alt_Snapshot_Folder", "Pre_Snapshot_Script", "Post_Snapshot_Script", "Ftp_Address", "Ftp_Port", "Ftp_SubDirectory", "Ftp_Login", "Ftp_Password", "Conflict_Retention", "Conflict_Policy", "Queue_Type", "Ad_GUIDName", "Backward_Comp_Level", "Min_AutonoSync_lsn", "Replicate_Ddl", "Options", "Originator_ID", "IndepEndent_Agent", "Allow_SubScription_Copy", "Centralized_Conflicts", "Allow_Initialize_From_Backup", "Allow_Sync_Tran", "Autogen_Sync_Procs", "Allow_Queued_Tran", "Snapshot_In_DefaultFolder", "Compress_Snapshot", "Allow_Dts", "Immediate_Sync", "Enabled_For_Internet", "Allow_Push", "Allow_Pull", "Allow_Anonymous", "Immediate_Sync_Ready", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "PubID", "Description", "Name", "Repl_Freq", "Status", "Sync_Method", "Snapshot_JobID", "Retention", "Alt_Snapshot_Folder", "Pre_Snapshot_Script", "Post_Snapshot_Script", "Ftp_Address", "Ftp_Port", "Ftp_SubDirectory", "Ftp_Login", "Ftp_Password", "Conflict_Retention", "Conflict_Policy", "Queue_Type", "Ad_GUIDName", "Backward_Comp_Level", "Min_AutonoSync_lsn", "Replicate_Ddl", "Options", "Originator_ID", "IndepEndent_Agent", "Allow_SubScription_Copy", "Centralized_Conflicts", "Allow_Initialize_From_Backup", "Allow_Sync_Tran", "Autogen_Sync_Procs", "Allow_Queued_Tran", "Snapshot_In_DefaultFolder", "Compress_Snapshot", "Allow_Dts", "Immediate_Sync", "Enabled_For_Internet", "Allow_Push", "Allow_Pull", "Allow_Anonymous", "Immediate_Sync_Ready", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_SysPublications_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  