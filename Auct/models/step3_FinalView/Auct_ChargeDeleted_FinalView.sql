{{ config(materialized='view',schema='stg')}}
Select
	[ChargeID],[FeeTypeID],[Created],[UpdateEventID],[InvoiceID],[Comments],[IsTaxable],[ConsignmentID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[Amount] 
From [Auct_ChargeDeleted_Incr]