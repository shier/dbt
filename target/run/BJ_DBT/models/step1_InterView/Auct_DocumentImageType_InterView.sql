create view "stg"."Auct_DocumentImageType_InterView__dbt_tmp" as
    
Select
	[DOCUMENTIMAGETYPEID] [DocumentImageTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_DocumentImageType_Raw]
