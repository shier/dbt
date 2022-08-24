{{ config(materialized='view',schema='stg')}}
Select
	[UserContactID],[ContactID],[UserContactTypeID],[UsersID],[Created],[UpdateEventID] 
From stg.[Auct_UserContact_Incr] 
Where [dbt_valid_to] is null