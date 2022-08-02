{{ config(materialized='view',schema='stg')}}
Select
	[DriverInFormationID],[ConsignmentID],[TentLocationID],[TentSpaceNumber],[DeLiveryCarrierID],[DeLiveryCarrierOther],[CheckedInUsersID],[SpareParts],[VINLocation],[CheckedOutUsersID],[ShippedCarrierID],[ShippedCarrierOther],[CheckedOutName],[BidderNumber],[LicenseNumber],[Created],[UpdateEventID] 
From stg.[Auct_DriverInFormation_Incr] 
Where [dbt_valid_to] is null