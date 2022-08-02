
Select
	[AssignmentID],[CustomerAccountID],[AddressStatusID],[UpdateEventID],[CompanyID],[AddressTypeID],[AddressID],[IsDefault],[Adddescr] 
From stg.[Auct_AddressAssignments_Incr] 
Where [dbt_valid_to] is null