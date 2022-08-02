
Select
	[AddressID],[Address1],[Address2],[City],[StateProvince],[PostalCode],[Careof],[Active],[County],[WeBaddressID],[Created],[Country],[UpdateEventID] 
From stg.[Auct_Address_Incr] 
Where [dbt_valid_to] is null