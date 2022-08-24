{{ config(materialized='view',schema='stg')}}
Select
	[NoteCategoryID],[Active],[Name] 
From stg.[Auct_NoteCategory_Incr] 
Where [dbt_valid_to] is null