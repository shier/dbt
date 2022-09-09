{{ config(materialized='view',schema='stg')}}
Select
	[QuestionID],[Question],[Created],[UpdateEventID] 
From stg.[Auct_SecretQuestions_Incr] 
Where [dbt_valid_to] is null