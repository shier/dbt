
  
  if object_id ('"stg"."AH_UserAlerts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserAlerts_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_UserAlerts_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_UserAlerts_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_UserAlerts_Final__dbt_tmp_temp_view as
    
Select
	[ID],[ModelID],[YearFrom],[Yearto],[UserID],[MakeID],[Enabled],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_UserAlerts_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_UserAlerts_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_UserAlerts_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_UserAlerts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserAlerts_Final__dbt_tmp_temp_view"
    end


