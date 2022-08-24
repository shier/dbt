create view "dbo_stg"."Auct_ConsignmentPropertyNote_InterView__dbt_tmp" as
    
Select
	[NOTEID] [NoteID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([NOTE] as nvarchar(4000)) [Note]
From stg.[Auct_ConsignmentPropertyNote_Raw]
