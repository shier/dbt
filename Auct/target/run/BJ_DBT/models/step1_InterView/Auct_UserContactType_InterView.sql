create view "dbo_stg"."Auct_UserContactType_InterView__dbt_tmp" as
    
Select
	[USERCONTACTTYPEID] [UserContactTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UserContactType_Raw]
