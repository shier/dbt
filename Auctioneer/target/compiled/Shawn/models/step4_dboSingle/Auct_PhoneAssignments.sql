
Select
	cast([PhoneAssignmentID] as int) [PHONEASSIGNMENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([PhoneID] as int) [PHONEID],
	cast([PhoneStatusID] as int) [PHONESTATUSID],
	cast([PhoneTypeID] as int) [PHONETYPEID],
	cast([IsDefault] as char(1)) [ISDEFAULT],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_PhoneAssignments_FinalView]