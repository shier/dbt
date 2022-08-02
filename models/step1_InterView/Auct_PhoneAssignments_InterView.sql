{{ config(materialized='view',schema='stg')}}
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
