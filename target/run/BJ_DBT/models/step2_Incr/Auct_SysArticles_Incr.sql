
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SysArticles_Incr" ("hashValue", "effectiveTime", "Fire_Triggers_On_Snapshot", "ArtID", "Creation_Script", "Del_Cmd", "Description", "Dest_Table", "Filter", "Filter_Clause", "Ins_Cmd", "Name", "OBJID", "PubID", "Pre_Creation_cmd", "Status", "Sync_OBJID", "Type", "Upd_Cmd", "SchEMA_Option", "Dest_Owner", "Ins_Scripting_Proc", "Del_Scripting_Proc", "Upd_Scripting_Proc", "Custom_Script")
    (
        select "hashValue", "effectiveTime", "Fire_Triggers_On_Snapshot", "ArtID", "Creation_Script", "Del_Cmd", "Description", "Dest_Table", "Filter", "Filter_Clause", "Ins_Cmd", "Name", "OBJID", "PubID", "Pre_Creation_cmd", "Status", "Sync_OBJID", "Type", "Upd_Cmd", "SchEMA_Option", "Dest_Owner", "Ins_Scripting_Proc", "Del_Scripting_Proc", "Upd_Scripting_Proc", "Custom_Script"
        from "BJAC_DW_PROD"."stg"."#Auct_SysArticles_Incr__dbt_tmp"
    );

  