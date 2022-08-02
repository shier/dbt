{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteID] as int) [NoteID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([Note] as nvarchar(4000)) [Note] 
From stg.[Auct_ConsignmentPropertyNote_FinalView]