
Select
	cast([OtherDocumentationTypeID] as int) [OTHERDOCUMENTATIONTYPEID],
	cast([Title] as nvarchar(4000)) [TITLE],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_OtherDocumentationType_FinalView]