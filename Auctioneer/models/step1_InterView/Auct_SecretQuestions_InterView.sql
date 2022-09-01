{{ config(materialized='view',schema='stg')}}
Select
	[QUESTIONID] [QuestionID],
	cast([QUESTION] as nvarchar(4000)) [Question],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SecretQuestions_Raw]
