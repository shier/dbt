create view "stg"."Auct_AvailableTrim_FinalView__dbt_tmp" as
    
Select
	[AvailableTrimID],[CarTrimID],[CarModelID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableTrim_Incr] 
Where [dbt_valid_to] is null
