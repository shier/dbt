create view "dbo_stg"."Auct_PhoneAssignments_InterView__dbt_tmp" as
    
Select
	[PHONEASSIGNMENTID] [PhoneAssignmentID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[PHONEID] [PhoneID],
	[PHONESTATUSID] [PhoneStatusID],
	[PHONETYPEID] [PhoneTypeID],
	cast([ISDEFAULT] as nvarchar(4000)) [IsDefault],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PhoneAssignments_Raw]
