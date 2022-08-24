{{ config(materialized='view',schema='stg')}}
Select
	[USERCONTACTID] [UserContactID],
	[CONTACTID] [ContactID],
	[USERCONTACTTYPEID] [UserContactTypeID],
	[USERSID] [UsersID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UserContact_Raw]
