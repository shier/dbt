{{ config(materialized='view',schema='stg')}}
Select
	[NOTEID] [NoteID],
	cast([TEXT] as nvarchar(4000)) [Text],
	[NOTECATEGORYID] [NoteCategoryID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	[CREATED] [Created]
From stg.[Auct_Notes_Raw]
