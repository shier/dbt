{{ config(materialized='view',schema='stg')}}
Select
	[CHATID] [ChatID],
	[TOUSERID] [ToUserID],
	[FROMUSERSID] [FromUsersID],
	cast([MESSAGE] as nvarchar(4000)) [Message],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Chat_Raw]
