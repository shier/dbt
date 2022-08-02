{{ config(materialized='view',schema='stg')}}
Select
	[SparePartsID],[DriverInFormationID],[SparePartsTypeID],[BarcodeID],[PartsDescription],[InActive],[InActiveUpdateEventID],[CheckOutText],[CheckOutUpdateEventID],[Created],[UpdateEventID],[SpaceNumber] 
From stg.[Auct_SpareParts_Incr] 
Where [dbt_valid_to] is null