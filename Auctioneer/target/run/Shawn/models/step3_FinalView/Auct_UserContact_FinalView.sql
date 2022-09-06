create view "stg"."Auct_UserContact_FinalView__dbt_tmp" as
    
Select
	[UserContactID],[ContactID],[UserContactTypeID],[UsersID],[Created],[UpdateEventID] 
From stg.[Auct_UserContact_Incr] 
Where [dbt_valid_to] is null
