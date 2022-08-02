
Select
	[MergeLogID],[Created],[UpdateEventID],[SourceContactID],[SourceLegacyID],[DestinationContactID],[DestinationLegacyID],[SourceName],[UserName] 
From stg.[Auct_MergeLog_Incr] 
Where [dbt_valid_to] is null