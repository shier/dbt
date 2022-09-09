{{ config(materialized='view',schema='stg')}}
Select
	[VenueID],[Name],[AddressID],[ShippingName],[ShippingAddressID],[Active] 
From stg.[Auct_Venue_Incr] 
Where [dbt_valid_to] is null