
Select
	[InvoiceID],[InvoiceName],[Created],[AuctionID],[ContactID],[UpdateEventID] 
From stg.[Auct_Invoice_Incr] 
Where [dbt_valid_to] is null