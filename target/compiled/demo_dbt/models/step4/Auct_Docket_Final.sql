
Select
	[DocketID],[LotStatus],[ConsignmentID],[UpdateEventID],[LaneNumber],[TargetTime],[ActualTime],[Created] 
From stg.[Auct_Docket_Incr] 
Where [dbt_valid_to] is null