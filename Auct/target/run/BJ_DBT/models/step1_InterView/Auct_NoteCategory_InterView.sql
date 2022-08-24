create view "stg"."Auct_NoteCategory_InterView__dbt_tmp" as
    
Select
	[NOTECATEGORYID] [NoteCategoryID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_NoteCategory_Raw]
