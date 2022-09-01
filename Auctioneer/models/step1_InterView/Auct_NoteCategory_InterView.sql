{{ config(materialized='view',schema='stg')}}
Select
	[NOTECATEGORYID] [NoteCategoryID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_NoteCategory_Raw]
