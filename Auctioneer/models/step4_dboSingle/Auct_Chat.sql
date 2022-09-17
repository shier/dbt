{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChatID] as int) [CHATID],
	cast([ToUserID] as int) [TOUSERID],
	cast([FromUsersID] as int) [FROMUSERSID],
	cast([Message] as nvarchar(4000)) [MESSAGE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Chat_FinalView]