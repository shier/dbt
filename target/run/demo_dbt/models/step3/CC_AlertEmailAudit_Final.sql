
  
  if object_id ('"stg"."CC_AlertEmailAudit_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AlertEmailAudit_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_AlertEmailAudit_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_AlertEmailAudit_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_AlertEmailAudit_Final__dbt_tmp_temp_view as
    
Select
	[AlertEmailAuditPK],[DateSentUTC],[SavedSearchID],[AlertFrequency],[EmailAddress],[MandrillID],[MandrillStatus],[MandrillrejectReason] 
From stg.[CC_AlertEmailAudit_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_AlertEmailAudit_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_AlertEmailAudit_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_AlertEmailAudit_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AlertEmailAudit_Final__dbt_tmp_temp_view"
    end


