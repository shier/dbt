create view "dbo_stg"."Auct_ContactHistory_InterView__dbt_tmp" as
    
Select
	[CONTACTHISTORYID] [ContactHistoryID],
	[CONTACTID] [ContactID],
	cast([NOTE] as nvarchar(4000)) [Note],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([MODIFIEDBY] as nvarchar(4000)) [ModifiedBy],
	[INTERNALUSE] [Internaluse],
	cast([ARCHIVE] as nvarchar(4000)) [Archive],
	[NOTEID] [NoteID]
From stg.[Auct_ContactHistory_Raw]
