create view "stg"."Auct_ChargeDeleted_FinalView__dbt_tmp" as
    
Select
	[ChargeID],[FeeTypeID],[Created],[UpdateEventID],[InvoiceID],[Comments],[IsTaxable],[ConsignmentID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[Amount] 
From [Auct_ChargeDeleted_Incr] 
Where [dbt_valid_to] is null
