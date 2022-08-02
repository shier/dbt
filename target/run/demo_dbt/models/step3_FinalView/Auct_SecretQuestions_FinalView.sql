create view "stg"."Auct_SecretQuestions_FinalView__dbt_tmp" as
    
Select
	[QuestionID],[Question],[Created],[UpdateEventID] 
From stg.[Auct_SecretQuestions_Incr] 
Where [dbt_valid_to] is null
