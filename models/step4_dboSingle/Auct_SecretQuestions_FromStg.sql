{{ config(materialized='table',schema='dbo')}}
Select
	cast([QuestionID] as int) [QuestionID],
	cast([Question] as nvarchar(4000)) [Question],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SecretQuestions_FinalView]