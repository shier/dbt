{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteCategoryID] as int) [NoteCategoryID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_NoteCategory_FinalView]