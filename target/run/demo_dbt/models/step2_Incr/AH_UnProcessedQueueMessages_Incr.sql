
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_UnProcessedQueueMessages_Incr" ("hashValue", "effectiveTime", "QueueName", "QueueData", "QueueOrder")
    (
        select "hashValue", "effectiveTime", "QueueName", "QueueData", "QueueOrder"
        from "DedicatedSQLpoolBJ"."stg"."#AH_UnProcessedQueueMessages_Incr__dbt_tmp"
    );

  