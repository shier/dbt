
  
  if object_id ('"dbo"."AH_UnProcessedQueueMessages__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UnProcessedQueueMessages__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UnProcessedQueueMessages__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UnProcessedQueueMessages__dbt_tmp"
    end


   EXEC('create view dbo.AH_UnProcessedQueueMessages__dbt_tmp_temp_view as
    
Select
	cast([QueueName] as nvarchar(4000)) [QueueName],
	cast([QueueData] as nvarchar(4000)) [QueueData],
	cast([QueueOrder] as int) [QueueOrder] 
From stg.[AH_UnProcessedQueueMessages_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UnProcessedQueueMessages__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UnProcessedQueueMessages__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UnProcessedQueueMessages__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UnProcessedQueueMessages__dbt_tmp_temp_view"
    end


