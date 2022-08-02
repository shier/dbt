
Select
	[PhoneAssignmentID],[IsDefault],[Created],[UpdateEventID],[CustomerAccountID],[PhoneID],[PhoneStatusID],[PhoneTypeID] 
From stg.[Auct_PhoneAssignments_Incr] 
Where [dbt_valid_to] is null