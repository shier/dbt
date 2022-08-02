{{ config(materialized='view',schema='stg')}}
Select
	[LogoutlogID],[UsersID],[Login],[Logout],[Created],[UpdateEventID] 
From stg.[Auct_Logoutlog_Incr] 
Where [dbt_valid_to] is null