
  
  if object_id ('"stg"."CC_ImportConfiguration_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ImportConfiguration_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ImportConfiguration_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ImportConfiguration_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ImportConfiguration_Final__dbt_tmp_temp_view as
    
Select
	[CompanyID],[FileName],[ActiveFromUTC],[ActivetOutC],[LastSuccessFileTimeStamp],[LastSuccessCompletedUTC],[FileTimeStamp],[CycleStart],[CycleEnd],[FileSize_kBytes],[Totalentries],[ValIDEntries],[Completedentries],[AllowLinksinDescriptions],[SkipMakeModelVerification] 
From stg.[CC_ImportConfiguration_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_ImportConfiguration_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ImportConfiguration_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ImportConfiguration_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ImportConfiguration_Final__dbt_tmp_temp_view"
    end


