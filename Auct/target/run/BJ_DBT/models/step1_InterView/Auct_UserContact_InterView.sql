create view "stg"."Auct_UserContact_InterView__dbt_tmp" as
    
Select
	[USERCONTACTID] [UserContactID],
	[CONTACTID] [ContactID],
	[USERCONTACTTYPEID] [UserContactTypeID],
	[USERSID] [UsersID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UserContact_Raw]
