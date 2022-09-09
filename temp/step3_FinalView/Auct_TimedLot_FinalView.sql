{{ config(materialized='view',schema='stg')}}
Select
	[ConsignmentID],[TargetTime] 
From [Auct_TimedLot_Incr] 
Where [dbt_valid_to] is null