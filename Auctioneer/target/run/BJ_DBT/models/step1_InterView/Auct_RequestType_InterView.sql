create view "stg"."Auct_RequestType_InterView__dbt_tmp" as
    
Select
	[REQUESTTYPEID] [RequestTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_RequestType_Raw]
