create view "stg"."Auct_UserGroup_FinalView__dbt_tmp" as
    
Select
	[GroupID],[Name],[DistributionEmail],[Created],[UpdateEventID],[GroupOwner] 
From stg.[Auct_UserGroup_Incr] 
Where [dbt_valid_to] is null
