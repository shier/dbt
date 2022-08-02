{{ config(materialized='table',schema='dbo')}}
Select
	cast([UserContactID] as int) [UserContactID],
	cast([ContactID] as int) [ContactID],
	cast([UserContactTypeID] as int) [UserContactTypeID],
	cast([UsersID] as int) [UsersID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UserContact_FinalView]