{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChatID] as int) [ChatID],
	cast([ToUserID] as int) [ToUserID],
	cast([FromUsersID] as int) [FromUsersID],
	cast([Message] as nvarchar(4000)) [Message],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Chat_FinalView]