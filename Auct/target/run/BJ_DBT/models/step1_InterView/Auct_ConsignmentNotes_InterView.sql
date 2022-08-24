create view "dbo_stg"."Auct_ConsignmentNotes_InterView__dbt_tmp" as
    
Select
	[NOTEID] [NoteID],
	[CONSIGNMENTID] [ConsignmentID]
From stg.[Auct_ConsignmentNotes_Raw]
