create view "stg"."Auct_AvailableModel_FinalView__dbt_tmp" as
    
Select
	[AvailableModelID],[CarModelID],[CarMakeID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableModel_Incr] 
Where [dbt_valid_to] is null
