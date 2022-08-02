
  
  if object_id ('"stg"."Auct_SysPublications_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysPublications_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysPublications_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysPublications_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysPublications_Final__dbt_tmp_temp_view as
    
Select
	[PubID],[Description],[Name],[Alt_Snapshot_Folder],[Pre_Snapshot_Script],[Post_Snapshot_Script],[Ftp_Address],[Ftp_SubDirectory],[Ftp_Login],[Ftp_Password],[Ad_GUIDName],[Snapshot_JobID],[Min_AutonoSync_lsn],[Originator_ID],[Conflict_Retention],[Conflict_Policy],[Queue_Type],[Backward_Comp_Level],[Replicate_Ddl],[Options],[Repl_Freq],[Status],[Sync_Method],[Retention],[Ftp_Port],[Allow_Anonymous],[Immediate_Sync_Ready],[Allow_Sync_Tran],[Autogen_Sync_Procs],[Allow_Queued_Tran],[Snapshot_In_DefaultFolder],[IndepEndent_Agent],[Immediate_Sync],[Enabled_For_Internet],[Allow_Push],[Allow_Pull],[Compress_Snapshot],[Allow_Dts],[Allow_SubScription_Copy],[Centralized_Conflicts],[Allow_Initialize_From_Backup] 
From stg.[Auct_SysPublications_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SysPublications_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysPublications_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysPublications_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysPublications_Final__dbt_tmp_temp_view"
    end


