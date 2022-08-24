create view "dbo_stg"."Auct_Notes_InterView__dbt_tmp" as
    
Select
	[NOTEID] [NoteID],
	cast([TEXT] as nvarchar(4000)) [Text],
	[NOTECATEGORYID] [NoteCategoryID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	[CREATED] [Created]
From stg.[Auct_Notes_Raw]
