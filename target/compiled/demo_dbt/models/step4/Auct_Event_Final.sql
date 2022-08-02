
Select
	[EventID],[StartDate],[EndDate],[Created],[BillingAddressID],[VenueID],[Year],[ParentEventID],[EventTypeID],[Active],[CreatedByUserID],[LocationAddressID],[ShippingAddressID],[ProjectCode],[ImageURL],[Name],[Code] 
From stg.[Auct_Event_Incr] 
Where [dbt_valid_to] is null