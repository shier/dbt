
  
  if object_id ('"dbo"."Auct_MergeLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MergeLog_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MergeLog_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MergeLog_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MergeLog_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MergeLogID] as int) [MergeLogID],
	cast([SourceContactID] as int) [SourceContactID],
	cast([SourceLegacyID] as int) [SourceLegacyID],
	cast([SourceName] as nvarchar(4000)) [SourceName],
	cast([DestinationContactID] as int) [DestinationContactID],
	cast([DestinationLegacyID] as int) [DestinationLegacyID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MergeLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MergeLog_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MergeLog_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MergeLog_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MergeLog_FromStg__dbt_tmp_temp_view"
    end


