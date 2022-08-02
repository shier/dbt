
  
  if object_id ('"stg"."AH_Notifications_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Notifications_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Notifications_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Notifications_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_Notifications_Final__dbt_tmp_temp_view as
    
Select
	[ID],[DetailID],[UpdatedOn],[DeletedOn],[Queueddttm],[Statusdttm],[CreatedOn],[StatusMessage],[Message],[DetailType],[ReplytoEmail],[RecipientEmail],[CcEmail],[BCcEmail],[SEnderUserName],[ReceiverUserName],[Template],[LastUpdatedUser],[Status] 
From stg.[AH_Notifications_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_Notifications_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Notifications_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Notifications_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Notifications_Final__dbt_tmp_temp_view"
    end


