{{ config(materialized='view',schema='stg')}}
Select
	[PhoneID],[CountryID],[AreaCode],[PhoneNumber],[Created],[UpdateEventID],[Active],[WebPhoneID] 
From stg.[Auct_Phone_Incr] 
Where [dbt_valid_to] is null