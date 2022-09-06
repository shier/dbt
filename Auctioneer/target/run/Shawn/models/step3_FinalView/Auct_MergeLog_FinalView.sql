create view "stg"."Auct_MergeLog_FinalView__dbt_tmp" as
    
Select
	[MergeLogID],[SourceContactID],[SourceLegacyID],[SourceName],[DestinationContactID],[DestinationLegacyID],[UserName],[Created],[UpdateEventID] 
From stg.[Auct_MergeLog_Incr] 
Where [dbt_valid_to] is null
