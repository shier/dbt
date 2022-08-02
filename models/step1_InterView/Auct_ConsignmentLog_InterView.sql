{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTLOGID] [ConsignmentLogID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([NOTETYPE] as nvarchar(4000)) [NoteType],
	cast([NOTE] as nvarchar(4000)) [Note],
	[USERSID] [UsersID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[CUSTOMERACCOUNTID] [CustomerAccountID]
From stg.[Auct_ConsignmentLog_Raw]
