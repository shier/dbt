create view "stg"."Auct_ConsignmentPropertyNote_FinalView__dbt_tmp" as
    
Select
	[NoteID],[ConsignmentID],[Note] 
From stg.[Auct_ConsignmentPropertyNote_Incr] 
Where [dbt_valid_to] is null
