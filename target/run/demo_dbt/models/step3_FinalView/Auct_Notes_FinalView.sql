create view "stg"."Auct_Notes_FinalView__dbt_tmp" as
    
Select
	[NoteID],[Text],[NoteCategoryID],[UserName],[Created] 
From stg.[Auct_Notes_Incr] 
Where [dbt_valid_to] is null
