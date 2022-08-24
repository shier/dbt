create view "dbo_stg"."Auct_MediaType_InterView__dbt_tmp" as
    
Select
	[MEDIATYPEID] [MediaTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaType_Raw]
