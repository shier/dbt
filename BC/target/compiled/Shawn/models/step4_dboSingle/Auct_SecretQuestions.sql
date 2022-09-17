
Select
	cast([QuestionID] as int) [QUESTIONID],
	cast([Question] as nvarchar(4000)) [QUESTION],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SecretQuestions_FinalView]