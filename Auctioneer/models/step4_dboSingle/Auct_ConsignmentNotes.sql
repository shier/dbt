{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([NoteID] as int) [NOTEID] 
From stg.[Auct_ConsignmentNotes_FinalView]