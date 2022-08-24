{{ config(materialized='view',schema='stg')}}
Select
	[DocketID],[ConsignmentID],[LotStatus],[TargetTime],[ActualTime],[Created],[UpdateEventID],[LaneNumber] 
From stg.[Auct_Docket_Incr] 
Where [dbt_valid_to] is null