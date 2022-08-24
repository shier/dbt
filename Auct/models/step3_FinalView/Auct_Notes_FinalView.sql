{{ config(materialized='view',schema='stg')}}
Select
	[NoteID],[Text],[NoteCategoryID],[UserName],[Created] 
From stg.[Auct_Notes_Incr] 
Where [dbt_valid_to] is null