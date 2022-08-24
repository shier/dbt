create view "stg"."Auct_OtherDocumentationType_InterView__dbt_tmp" as
    
Select
	[OTHERDOCUMENTATIONTYPEID] [OtherDocumentationTypeID],
	cast([TITLE] as nvarchar(4000)) [Title],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_OtherDocumentationType_Raw]
