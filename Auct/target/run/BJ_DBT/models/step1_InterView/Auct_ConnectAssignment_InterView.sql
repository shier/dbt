create view "dbo_stg"."Auct_ConnectAssignment_InterView__dbt_tmp" as
    
Select
	[CONNECTID] [ConnectID],
	cast([NAME] as nvarchar(4000)) [Name],
	[USERSID] [UsersID],
	[CONFIGID] [ConfigID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ConnectAssignment_Raw]
