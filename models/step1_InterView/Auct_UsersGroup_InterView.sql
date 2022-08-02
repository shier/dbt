{{ config(materialized='view',schema='stg')}}
Select
	[USERSGROUPID] [UsersGroupID],
	[USERSID] [UsersID],
	[GROUPID] [GroupID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UsersGroup_Raw]
