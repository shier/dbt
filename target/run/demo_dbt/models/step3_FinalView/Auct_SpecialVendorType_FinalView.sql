create view "stg"."Auct_SpecialVendorType_FinalView__dbt_tmp" as
    
Select
	[SpecialVendorTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SpecialVendorType_Incr] 
Where [dbt_valid_to] is null
