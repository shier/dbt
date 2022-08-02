{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactHistoryID] as int) [ContactHistoryID],
	cast([ContactID] as int) [ContactID],
	cast([Note] as nvarchar(4000)) [Note],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ModifiedBy] as nvarchar(4000)) [ModifiedBy],
	cast([Internaluse] as int) [InternalUse],
	cast([Archive] as nvarchar(4000)) [Archive],
	cast([NoteID] as int) [NoteID] 
From stg.[Auct_ContactHistory_FinalView]