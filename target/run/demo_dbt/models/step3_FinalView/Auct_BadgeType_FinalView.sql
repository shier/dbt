create view "stg"."Auct_BadgeType_FinalView__dbt_tmp" as
    
Select
	[BadgeTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BadgeType_Incr] 
Where [dbt_valid_to] is null
