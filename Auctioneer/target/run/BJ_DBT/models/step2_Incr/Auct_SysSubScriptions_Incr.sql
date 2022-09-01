
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SysSubScriptions_Incr" ("hashValue", "effectiveTime", "Loopback_Detection", "Queued_reinit", "ArtID", "SrvID", "Dest_Db", "Status", "Sync_Type", "Login_Name", "SubScription_Type", "Distribution_JobID", "TimeStamp", "Update_Mode", "NoSync_Type", "SrvName")
    (
        select "hashValue", "effectiveTime", "Loopback_Detection", "Queued_reinit", "ArtID", "SrvID", "Dest_Db", "Status", "Sync_Type", "Login_Name", "SubScription_Type", "Distribution_JobID", "TimeStamp", "Update_Mode", "NoSync_Type", "SrvName"
        from "BJAC_DW_PROD"."stg"."#Auct_SysSubScriptions_Incr__dbt_tmp"
    );

  