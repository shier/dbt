
Select
	[ChargeVoidID],[Amount],[UnitPrice],[Comments],[IsTaxable],[PEndingNavision],[OverrideReason],[RejectionReason],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[CanCancel],[ChargeID],[FeeTypeID],[UpdateEventID],[InvoiceID],[ConsignmentID],[BidderID],[CanceledByChargeID],[CanceledChargeID],[ReservationID],[ApprovalStateID],[ApprovedByUserID],[Created],[ActionDate] 
From stg.[Auct_ChargeVoid_Incr] 
Where [dbt_valid_to] is null