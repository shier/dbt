{{ config(materialized='view',schema='stg')}}
Select
	[KeyControlStatusID],[Active],[Name] 
From stg.[Auct_KeyControlStatus_Incr] 
Where [dbt_valid_to] is null