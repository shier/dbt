{{ config(materialized='table',schema='dbo')}}
Select
	cast([UserContactID] as int) [USERCONTACTID],
	cast([ContactID] as int) [CONTACTID],
	cast([UserContactTypeID] as int) [USERCONTACTTYPEID],
	cast([UsersID] as int) [USERSID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UserContact_FinalView]