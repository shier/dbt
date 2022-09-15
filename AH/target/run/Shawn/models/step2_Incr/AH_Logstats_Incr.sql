
      
      
      delete from "BJAC_DW_PROD"."stg"."AH_Logstats_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#AH_Logstats_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."AH_Logstats_Incr" ("FromDate", "RangeMinutes", "EntryCount", "IsArchived", "Severity", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "FromDate", "RangeMinutes", "EntryCount", "IsArchived", "Severity", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#AH_Logstats_Incr__dbt_tmp"
          )


  