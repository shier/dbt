create view "stg"."Auct_Invoice_FinalView__dbt_tmp" as
    
Select
	[InvoiceID],[InvoiceName],[AuctionID],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_Invoice_Incr] 
Where [dbt_valid_to] is null
