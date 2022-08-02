
  
  if object_id ('"stg"."CC_ImportConfiguration_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ImportConfiguration_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ImportConfiguration_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ImportConfiguration_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ImportConfiguration_Inter__dbt_tmp_temp_view as
    
Select
	cast(FileName as nvarchar(4000)) FileName,
	ActiveFromUTC ActiveFromUTC,
	ActiveToUTC ActivetOutC,
	LastSuccessFileTimestamp LastSuccessFileTimeStamp,
	LastSuccessCompletedUTC LastSuccessCompletedUTC,
	FileTimestamp FileTimeStamp,
	CycleStart CycleStart,
	CycleEnd CycleEnd,
	CompanyId CompanyID,
	FileSize_KBytes FileSize_kBytes,
	TotalEntries Totalentries,
	ValidEntries ValIDEntries,
	CompletedEntries Completedentries,
	AllowLinksInDescriptions AllowLinksinDescriptions,
	SkipMakeModelVerification SkipMakeModelVerification
From CC_ImportConfiguration_Raw
    ');

  CREATE TABLE "stg"."CC_ImportConfiguration_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ImportConfiguration_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ImportConfiguration_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ImportConfiguration_Inter__dbt_tmp_temp_view"
    end


