
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_SysSubScriptions_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_SysSubScriptions_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_SysSubScriptions_Incr" ("Loopback_Detection", "Queued_reinit", "ArtID", "SrvID", "Dest_Db", "Status", "Sync_Type", "Login_Name", "SubScription_Type", "Distribution_JobID", "TimeStamp", "Update_Mode", "NoSync_Type", "SrvName", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "Loopback_Detection", "Queued_reinit", "ArtID", "SrvID", "Dest_Db", "Status", "Sync_Type", "Login_Name", "SubScription_Type", "Distribution_JobID", "TimeStamp", "Update_Mode", "NoSync_Type", "SrvName", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_SysSubScriptions_Incr__dbt_tmp"
    );

  