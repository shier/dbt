create view "stg"."Auct_Address_FinalView__dbt_tmp" as
    
Select
	[AddressID],[Address1],[Address2],[City],[StateProvince],[PostalCode],[Country],[Created],[UpdateEventID],[Careof],[Active],[County],[WeBaddressID] 
From stg.[Auct_Address_Incr] 
Where [dbt_valid_to] is null
