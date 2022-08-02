
Select
	[ChargeID],[Amount],[UnitPrice],[Created],[ActionDate],[CanceledChargeID],[ReservationID],[ApprovalStateID],[ApprovedByUserID],[VendorID],[MediaID],[SponsorID],[UserID],[CanCancel],[CanceledByChargeID],[FeeTypeID],[UpdateEventID],[InvoiceID],[ConsignmentID],[BidderID],[DealerID],[PEndingNavision],[OverrideReason],[RejectionReason],[DocumentID],[Comments],[IsTaxable] 
From stg.[Auct_Charge_Incr] 
Where [dbt_valid_to] is null