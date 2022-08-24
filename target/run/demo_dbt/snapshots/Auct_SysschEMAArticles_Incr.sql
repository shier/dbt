
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_SysschEMAArticles_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_SysschEMAArticles_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_SysschEMAArticles_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_SysschEMAArticles_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_SysschEMAArticles_Incr" (
                  "ArtID", "Creation_Script", "Description", "Dest_OBJect", "Name", "OBJID", "PubID", "Pre_Creation_cmd", "Status", "Type", "SchEMA_Option", "Dest_Owner", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ArtID", "Creation_Script", "Description", "Dest_OBJect", "Name", "OBJID", "PubID", "Pre_Creation_cmd", "Status", "Type", "SchEMA_Option", "Dest_Owner", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_SysschEMAArticles_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  