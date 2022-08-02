
  
  if object_id ('"stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_UnProcessedQueueMessages_Inter__dbt_tmp_temp_view as
    
Select
	cast(QueueName as nvarchar(4000)) QueueName,
	cast(QueueData as nvarchar(4000)) QueueData,
	QueueOrder QueueOrder
From AH_UnProcessedQueueMessages_Raw
    ');

  CREATE TABLE "stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_UnProcessedQueueMessages_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UnProcessedQueueMessages_Inter__dbt_tmp_temp_view"
    end


