{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentLogID],[ConsignmentID],[NoteType],[Note],[UsersID],[Created],[UpdateEventID],[CustomerAccountID] 
From stg.[Auct_ConsignmentLog_Incr] 
Where [dbt_valid_to] is null