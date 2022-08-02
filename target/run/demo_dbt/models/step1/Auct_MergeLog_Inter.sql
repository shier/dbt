
  
  if object_id ('"stg"."Auct_MergeLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MergeLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MergeLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MergeLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MergeLog_Inter__dbt_tmp_temp_view as
    
Select
	[MERGELOGID] [MergeLogID],
	[SOURCECONTACTID] [SourceContactID],
	[SOURCELEGACYID] [SourceLegacyID],
	cast([SOURCENAME] as nvarchar(4000)) [SourceName],
	[DESTINATIONCONTACTID] [DestinationContactID],
	[DESTINATIONLEGACYID] [DestinationLegacyID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MergeLog_Raw]
    ');

  CREATE TABLE "stg"."Auct_MergeLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MergeLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MergeLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MergeLog_Inter__dbt_tmp_temp_view"
    end


