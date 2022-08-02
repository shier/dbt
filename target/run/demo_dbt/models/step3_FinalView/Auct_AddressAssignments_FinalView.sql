create view "stg"."Auct_AddressAssignments_FinalView__dbt_tmp" as
    
Select
	[AssignmentID],[AddressID],[CustomerAccountID],[AddressStatusID],[UpdateEventID],[IsDefault],[Adddescr],[CompanyID],[AddressTypeID] 
From stg.[Auct_AddressAssignments_Incr] 
Where [dbt_valid_to] is null
