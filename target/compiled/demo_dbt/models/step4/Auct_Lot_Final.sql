
Select
	[NavPull_Lot_ID],[Created],[ConsignmentID],[NavPullID],[AddressID],[PaymentMethodID],[AmountApplied] 
From stg.[Auct_Lot_Incr] 
Where [dbt_valid_to] is null