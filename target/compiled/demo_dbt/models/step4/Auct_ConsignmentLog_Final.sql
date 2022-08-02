
Select
	[ConsignmentLogID],[Created],[CustomerAccountID],[ConsignmentID],[UsersID],[UpdateEventID],[NoteType],[Note] 
From stg.[Auct_ConsignmentLog_Incr] 
Where [dbt_valid_to] is null