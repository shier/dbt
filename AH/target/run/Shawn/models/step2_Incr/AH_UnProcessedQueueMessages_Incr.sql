
      
      
      delete from "BJAC_DW_PROD"."dbo_stg"."AH_UnProcessedQueueMessages_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."dbo_stg"."#AH_UnProcessedQueueMessages_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."dbo_stg"."AH_UnProcessedQueueMessages_Incr" ("QueueName", "QueueData", "QueueOrder", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "QueueName", "QueueData", "QueueOrder", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."dbo_stg"."#AH_UnProcessedQueueMessages_Incr__dbt_tmp"
          )


  