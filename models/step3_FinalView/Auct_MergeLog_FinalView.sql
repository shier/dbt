{{ config(materialized='view',schema='stg')}}
Select
	[MergeLogID],[SourceContactID],[SourceLegacyID],[SourceName],[DestinationContactID],[DestinationLegacyID],[UserName],[Created],[UpdateEventID] 
From stg.[Auct_MergeLog_Incr] 
Where [dbt_valid_to] is null