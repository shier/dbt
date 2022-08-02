create view "stg"."Auct_CarConditionLink_FinalView__dbt_tmp" as
    
Select
	[CarConditionLinkID],[CarID],[CarConditionID],[Created],[UpdateEventID] 
From stg.[Auct_CarConditionLink_Incr] 
Where [dbt_valid_to] is null
