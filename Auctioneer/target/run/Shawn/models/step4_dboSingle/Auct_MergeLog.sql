
  
  if object_id ('"dbo"."Auct_MergeLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MergeLog__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MergeLog__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MergeLog__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MergeLog__dbt_tmp_temp_view as
    
Select
	cast([MergeLogID] as int) [MERGELOGID],
	cast([SourceContactID] as int) [SOURCECONTACTID],
	cast([SourceLegacyID] as int) [SOURCELEGACYID],
	cast([SourceName] as nvarchar(4000)) [SOURCENAME],
	cast([DestinationContactID] as int) [DESTINATIONCONTACTID],
	cast([DestinationLegacyID] as int) [DESTINATIONLEGACYID],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MergeLog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MergeLog__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MergeLog__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MergeLog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MergeLog__dbt_tmp_temp_view"
    end


