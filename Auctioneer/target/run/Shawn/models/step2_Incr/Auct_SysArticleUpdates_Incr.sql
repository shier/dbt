
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SysArticleUpdates_Incr" ("hashValue", "effectiveTime", "IDEntity_Support", "Autogen", "ArtID", "PubID", "Sync_Ins_Proc", "Sync_upd_Proc", "Sync_Del_Proc", "Sync_upd_Trig", "Conflict_TableID", "Ins_Conflict_Proc")
    (
        select "hashValue", "effectiveTime", "IDEntity_Support", "Autogen", "ArtID", "PubID", "Sync_Ins_Proc", "Sync_upd_Proc", "Sync_Del_Proc", "Sync_upd_Trig", "Conflict_TableID", "Ins_Conflict_Proc"
        from "BJAC_DW_PROD"."stg"."#Auct_SysArticleUpdates_Incr__dbt_tmp"
    );

  