create view "stg"."Auct_SpareParts_FinalView__dbt_tmp" as
    
Select
	[SparePartsID],[DriverInFormationID],[SparePartsTypeID],[BarcodeID],[PartsDescription],[InActive],[InActiveUpdateEventID],[CheckOutText],[CheckOutUpdateEventID],[Created],[UpdateEventID],[SpaceNumber] 
From stg.[Auct_SpareParts_Incr] 
Where [dbt_valid_to] is null