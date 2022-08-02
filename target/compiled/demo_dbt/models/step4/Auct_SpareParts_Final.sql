
Select
	[SparePartsID],[BarcodeID],[PartsDescription],[InActive],[CheckOutText],[SpaceNumber],[Created],[DriverInFormationID],[SparePartsTypeID],[InActiveUpdateEventID],[CheckOutUpdateEventID],[UpdateEventID] 
From stg.[Auct_SpareParts_Incr] 
Where [dbt_valid_to] is null