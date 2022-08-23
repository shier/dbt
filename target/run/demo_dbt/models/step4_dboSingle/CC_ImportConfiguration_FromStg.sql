
  
  if object_id ('"dbo"."CC_ImportConfiguration_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ImportConfiguration_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ImportConfiguration_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ImportConfiguration_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ImportConfiguration_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CompanyID] as int) [CompanyID],
	cast([FileSize_kBytes] as int) [FileSize_kBytes],
	cast([Totalentries] as int) [Totalentries],
	cast([ValIDEntries] as int) [ValIDEntries],
	cast([Completedentries] as int) [Completedentries],
	cast([ActiveFromUTC] as datetime) [ActiveFromUTC],
	cast([ActivetOutC] as datetime) [ActivetOutC],
	cast([LastSuccessFileTimeStamp] as datetime) [LastSuccessFileTimeStamp],
	cast([LastSuccessCompletedUTC] as datetime) [LastSuccessCompletedUTC],
	cast([FileTimeStamp] as datetime) [FileTimeStamp],
	cast([CycleStart] as datetime) [CycleStart],
	cast([CycleEnd] as datetime) [CycleEnd],
	cast([AllowLinksinDescriptions] as bit) [AllowLinksinDescriptions],
	cast([SkipMakeModelVerification] as bit) [SkipMakeModelVerification],
	cast([FileName] as nvarchar(4000)) [FileName] 
From stg.[CC_ImportConfiguration_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ImportConfiguration_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ImportConfiguration_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ImportConfiguration_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ImportConfiguration_FromStg__dbt_tmp_temp_view"
    end


