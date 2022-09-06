create view "stg"."Auct_ConsignmentLog_FinalView__dbt_tmp" as
    
Select
	[ConsignmentLogID],[ConsignmentID],[NoteType],[Note],[UsersID],[Created],[UpdateEventID],[CustomerAccountID] 
From stg.[Auct_ConsignmentLog_Incr] 
Where [dbt_valid_to] is null
