create view "stg"."Auct_ConsignmentNotes_FinalView__dbt_tmp" as
    
Select
	[NoteID],[ConsignmentID] 
From stg.[Auct_ConsignmentNotes_Incr] 
Where [dbt_valid_to] is null
