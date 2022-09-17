{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([NoteCategoryID] as int) [NOTECATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_NoteCategory_FinalView]