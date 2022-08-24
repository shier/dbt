{{ config(materialized='view',schema='stg')}}
Select
	[GroupID],[Name],[DistributionEmail],[Created],[UpdateEventID],[GroupOwner] 
From stg.[Auct_UserGroup_Incr] 
Where [dbt_valid_to] is null