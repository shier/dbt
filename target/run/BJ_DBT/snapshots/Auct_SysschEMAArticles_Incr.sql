
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_SysschEMAArticles_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_SysschEMAArticles_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_SysschEMAArticles_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_SysschEMAArticles_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_SysschEMAArticles_Incr" (
                  "ArtID", "Creation_Script", "Description", "Dest_OBJect", "Name", "OBJID", "PubID", "Pre_Creation_cmd", "Status", "Type", "SchEMA_Option", "Dest_Owner", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ArtID", "Creation_Script", "Description", "Dest_OBJect", "Name", "OBJID", "PubID", "Pre_Creation_cmd", "Status", "Type", "SchEMA_Option", "Dest_Owner", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_SysschEMAArticles_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  