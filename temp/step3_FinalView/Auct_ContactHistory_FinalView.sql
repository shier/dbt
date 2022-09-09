{{ config(materialized='view',schema='stg')}}
Select
	[ContactHistoryID],[ContactID],[Note],[Created],[UpdateEventID],[ModifiedBy],[Internaluse],[Archive],[NoteID] 
From stg.[Auct_ContactHistory_Incr] 
Where [dbt_valid_to] is null