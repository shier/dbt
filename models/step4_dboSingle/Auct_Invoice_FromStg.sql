{{ config(materialized='table',schema='dbo')}}
Select
	cast([InvoiceID] as int) [InvoiceID],
	cast([InvoiceName] as nvarchar(512)) [InvoiceName],
	cast([AuctionID] as int) [AuctionID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Invoice_FinalView]