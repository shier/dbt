{{ config(materialized='view',schema='stg')}}
Select
	[UsersKeyID],[UsersID],[SessionID],[IpAddress],[LastActivity],[Created],[UpdateEventID] 
From stg.[Auct_UsersKey_Incr] 
Where [dbt_valid_to] is null