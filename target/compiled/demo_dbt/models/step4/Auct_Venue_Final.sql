
Select
	[VenueID],[AddressID],[ShippingAddressID],[Active],[Name],[ShippingName] 
From stg.[Auct_Venue_Incr] 
Where [dbt_valid_to] is null