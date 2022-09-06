create view "stg"."Auct_NoteCategory_FinalView__dbt_tmp" as
    
Select
	[NoteCategoryID],[Active],[Name] 
From stg.[Auct_NoteCategory_Incr] 
Where [dbt_valid_to] is null
