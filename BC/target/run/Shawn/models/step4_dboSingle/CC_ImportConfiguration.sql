
  
  if object_id ('"dbo"."CC_ImportConfiguration__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ImportConfiguration__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ImportConfiguration__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ImportConfiguration__dbt_tmp"
    end


   EXEC('create view dbo.CC_ImportConfiguration__dbt_tmp_temp_view as
    
Select
	cast([CompanyID] as int) [CompanyId],
	cast([FileSize_kBytes] as int) [FileSize_KBytes],
	cast([Totalentries] as int) [TotalEntries],
	cast([ValIDEntries] as int) [ValidEntries],
	cast([Completedentries] as int) [CompletedEntries],
	cast([ActiveFromUTC] as datetime) [ActiveFromUTC],
	cast([ActivetOutC] as datetime) [ActiveToUTC],
	cast([LastSuccessFileTimeStamp] as datetime) [LastSuccessFileTimestamp],
	cast([LastSuccessCompletedUTC] as datetime) [LastSuccessCompletedUTC],
	cast([FileTimeStamp] as datetime) [FileTimestamp],
	cast([CycleStart] as datetime) [CycleStart],
	cast([CycleEnd] as datetime) [CycleEnd],
	cast([AllowLinksinDescriptions] as bit) [AllowLinksInDescriptions],
	cast([SkipMakeModelVerification] as bit) [SkipMakeModelVerification],
	cast([FileName] as nvarchar(4000)) [FileName] 
From stg.[CC_ImportConfiguration_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ImportConfiguration__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ImportConfiguration__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ImportConfiguration__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ImportConfiguration__dbt_tmp_temp_view"
    end


