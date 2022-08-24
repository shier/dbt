create view "stg"."Auct_UsersGroup_InterView__dbt_tmp" as
    
Select
	[USERSGROUPID] [UsersGroupID],
	[USERSID] [UsersID],
	[GROUPID] [GroupID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UsersGroup_Raw]
