create view "stg"."Auct_AvailableOptions_FinalView__dbt_tmp" as
    
Select
	[AvailableOptionsID],[CarOptionID],[CarModelID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableOptions_Incr] 
Where [dbt_valid_to] is null
