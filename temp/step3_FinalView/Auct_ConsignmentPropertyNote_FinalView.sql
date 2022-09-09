{{ config(materialized='view',schema='stg')}}
Select
	[NoteID],[ConsignmentID],[Note] 
From stg.[Auct_ConsignmentPropertyNote_Incr] 
Where [dbt_valid_to] is null