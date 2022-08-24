create view "dbo_stg"."Auct_SecretQuestions_InterView__dbt_tmp" as
    
Select
	[QUESTIONID] [QuestionID],
	cast([QUESTION] as nvarchar(4000)) [Question],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SecretQuestions_Raw]
