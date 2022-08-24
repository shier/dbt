{{ config(materialized='view',schema='stg')}}
Select
	[NavPull_Lot_ID],[AmountApplied],[ConsignmentID],[NavPullID],[AddressID],[Created],[PaymentMethodID] 
From stg.[Auct_NavPull_Lot_Incr] 
Where [dbt_valid_to] is null