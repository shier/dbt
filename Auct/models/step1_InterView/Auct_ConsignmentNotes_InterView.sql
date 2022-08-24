{{ config(materialized='view',schema='stg')}}
Select
	[NOTEID] [NoteID],
	[CONSIGNMENTID] [ConsignmentID]
From stg.[Auct_ConsignmentNotes_Raw]
