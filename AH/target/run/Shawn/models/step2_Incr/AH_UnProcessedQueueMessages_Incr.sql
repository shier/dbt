
      
  

    insert into "BJAC_DW_PROD"."stg"."AH_UnProcessedQueueMessages_Incr" ("hashValue", "effectiveTime", "QueueName", "QueueData", "QueueOrder")
    (
        select "hashValue", "effectiveTime", "QueueName", "QueueData", "QueueOrder"
        from "BJAC_DW_PROD"."stg"."#AH_UnProcessedQueueMessages_Incr__dbt_tmp"
    );

  