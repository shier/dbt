
Select
	[DriverInFormationID],[ConsignmentID],[TentLocationID],[DeLiveryCarrierID],[CheckedInUsersID],[CheckedOutUsersID],[ShippedCarrierID],[UpdateEventID],[Created],[SpareParts],[VINLocation],[ShippedCarrierOther],[CheckedOutName],[BidderNumber],[LicenseNumber],[TentSpaceNumber],[DeLiveryCarrierOther] 
From stg.[Auct_DriverInFormation_Incr] 
Where [dbt_valid_to] is null