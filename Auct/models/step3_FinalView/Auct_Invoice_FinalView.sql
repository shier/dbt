{{ config(materialized='view',schema='stg')}}
Select
	[InvoiceID],[InvoiceName],[AuctionID],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_Invoice_Incr] 
Where [dbt_valid_to] is null