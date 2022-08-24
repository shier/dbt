create view "stg"."Auct_MultiMediaType_InterView__dbt_tmp" as
    
Select
	[MULTIMEDIATYPEID] [MultiMediaTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	cast([EXTENSION] as nvarchar(4000)) [Extension]
From stg.[Auct_MultiMediaType_Raw]
