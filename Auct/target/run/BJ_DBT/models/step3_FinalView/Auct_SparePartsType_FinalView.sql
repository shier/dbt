create view "stg"."Auct_SparePartsType_FinalView__dbt_tmp" as
    
Select
	[SparePartsTypeID],[Name],[InActive],[Created],[UpdateEventID] 
From stg.[Auct_SparePartsType_Incr] 
Where [dbt_valid_to] is null
