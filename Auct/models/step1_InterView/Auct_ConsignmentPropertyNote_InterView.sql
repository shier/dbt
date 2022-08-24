{{ config(materialized='view',schema='stg')}}
Select
	[NOTEID] [NoteID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([NOTE] as nvarchar(4000)) [Note]
From stg.[Auct_ConsignmentPropertyNote_Raw]
