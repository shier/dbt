
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_SysArticleUpdates_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_SysArticleUpdates_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_SysArticleUpdates_Incr" ("IDEntity_Support", "Autogen", "ArtID", "PubID", "Sync_Ins_Proc", "Sync_upd_Proc", "Sync_Del_Proc", "Sync_upd_Trig", "Conflict_TableID", "Ins_Conflict_Proc", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "IDEntity_Support", "Autogen", "ArtID", "PubID", "Sync_Ins_Proc", "Sync_upd_Proc", "Sync_Del_Proc", "Sync_upd_Trig", "Conflict_TableID", "Ins_Conflict_Proc", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_SysArticleUpdates_Incr__dbt_tmp"
          )


  