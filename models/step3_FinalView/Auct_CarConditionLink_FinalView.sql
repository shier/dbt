{{ config(materialized='view',schema='stg')}}
Select
	[CarConditionLinkID],[CarID],[CarConditionID],[Created],[UpdateEventID] 
From stg.[Auct_CarConditionLink_Incr] 
Where [dbt_valid_to] is null