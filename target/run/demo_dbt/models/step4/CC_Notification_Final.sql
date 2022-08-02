
  
  if object_id ('"stg"."CC_Notification_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Notification_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Notification_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Notification_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_Notification_Final__dbt_tmp_temp_view as
    
Select
	[ID],[DeviceID],[CreateDate],[UserID] 
From stg.[CC_Notification_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_Notification_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Notification_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Notification_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Notification_Final__dbt_tmp_temp_view"
    end


