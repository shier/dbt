{{ config(materialized='view',schema='stg')}}
Select
	[ChatID],[ToUserID],[FromUsersID],[Message],[Created],[UpdateEventID] 
From stg.[Auct_Chat_Incr] 
Where [dbt_valid_to] is null