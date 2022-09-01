{{ config(materialized='view',schema='stg')}}
Select
	[NoteID],[ConsignmentID] 
From stg.[Auct_ConsignmentNotes_Incr] 
Where [dbt_valid_to] is null