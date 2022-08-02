{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteID] as int) [NoteID],
	cast([Text] as nvarchar(4000)) [Text],
	cast([NoteCategoryID] as int) [NoteCategoryID],
	cast([UserName] as nvarchar(512)) [Username],
	cast([Created] as datetime) [Created] 
From stg.[Auct_Notes_FinalView]