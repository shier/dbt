create view "stg"."Auct_Chat_FinalView__dbt_tmp" as
    
Select
	[ChatID],[ToUserID],[FromUsersID],[Message],[Created],[UpdateEventID] 
From stg.[Auct_Chat_Incr] 
Where [dbt_valid_to] is null