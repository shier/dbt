
Select
	CREATED Created,
	QUESTIONID QuestionID,
	UPDATEEVENTID UpdateEventID,
	cast(QUESTION as nvarchar(4000)) Question
From Auct_SecretQuestions_Raw