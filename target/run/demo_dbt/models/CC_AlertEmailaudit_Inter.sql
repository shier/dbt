
  
  if object_id ('"stg"."CC_AlertEmailaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AlertEmailaudit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_AlertEmailaudit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_AlertEmailaudit_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_AlertEmailaudit_Inter__dbt_tmp_temp_view as
    
Select
	DateSentUTC DateSentUTC,
	AlertEmailAuditPK AlertEmailauditpk,
	SavedSearchId SavedSearchID,
	cast(MandrillRejectReason as nvarchar(4000)) MandrillrejectReason,
	cast(AlertFrequency as nvarchar(4000)) AlertFrequency,
	cast(EmailAddress as nvarchar(4000)) EmailAddress,
	cast(MandrillId as nvarchar(4000)) MandrillID,
	cast(MandrillStatus as nvarchar(4000)) MandrillStatus
From CC_AlertEmailaudit_Raw
    ');

  CREATE TABLE "stg"."CC_AlertEmailaudit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_AlertEmailaudit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_AlertEmailaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AlertEmailaudit_Inter__dbt_tmp_temp_view"
    end


