{{ config(materialized='view',schema='stg')}}
Select
	[PhoneAssignmentID],[CustomerAccountID],[PhoneID],[PhoneStatusID],[PhoneTypeID],[IsDefault],[Created],[UpdateEventID] 
From stg.[Auct_PhoneAssignments_Incr] 
Where [dbt_valid_to] is null