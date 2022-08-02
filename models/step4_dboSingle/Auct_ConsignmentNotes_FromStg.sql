{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteID] as int) [NoteID],
	cast([ConsignmentID] as int) [ConsignmentID] 
From stg.[Auct_ConsignmentNotes_FinalView]