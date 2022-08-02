create view "stg"."Auct_VendorType_FinalView__dbt_tmp" as
    
Select
	[VendorTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_VendorType_Incr] 
Where [dbt_valid_to] is null
