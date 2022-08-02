
  
  if object_id ('"stg"."CC_ErrorLog_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ErrorLog_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ErrorLog_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ErrorLog_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ErrorLog_Final__dbt_tmp_temp_view as
    
Select
	[ID],[UserMessage],[Exceptiondetails],[HttpMethod],[URL],[ReferrerURL],[UserAgent],[ClientAddress],[Headers],[Body],[MachineName],[Stacktrace],[CreateDate],[ModifyDate],[IsActive] 
From stg.[CC_ErrorLog_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_ErrorLog_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ErrorLog_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ErrorLog_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ErrorLog_Final__dbt_tmp_temp_view"
    end


