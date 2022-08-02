{{ config(materialized='view',schema='stg')}}
Select
	[CarConditionID],[WebActive],[Active],[Name],[Created],[UpdateEventID],[CarConditionBit] 
From stg.[Auct_CarCondition_Incr] 
Where [dbt_valid_to] is null