{{ config(materialized='view',schema='stg')}}
Select
	[EventID],[Name],[Code],[ProjectCode],[Year],[ParentEventID],[EventTypeID],[StartDate],[EndDate],[Created],[Active],[CreatedByUserID],[LocationAddressID],[ShippingAddressID],[BillingAddressID],[ImageURL],[VenueID] 
From stg.[Auct_Event_Incr] 
Where [dbt_valid_to] is null