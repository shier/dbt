create view "stg"."Auct_VendorStatus_FinalView__dbt_tmp" as
    
Select
	[VendorStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_VendorStatus_Incr] 
Where [dbt_valid_to] is null
