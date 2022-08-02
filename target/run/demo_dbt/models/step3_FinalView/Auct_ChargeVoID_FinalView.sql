create view "stg"."Auct_ChargeVoID_FinalView__dbt_tmp" as
    
Select
	[ChargeVoidID],[Amount],[UnitPrice],[ChargeID],[FeeTypeID],[Created],[UpdateEventID],[InvoiceID],[Comments],[IsTaxable],[ConsignmentID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[CanCancel],[CanceledByChargeID],[CanceledChargeID],[ReservationID],[PEndingNavision],[OverrideReason],[ApprovalStateID],[ApprovedByUserID],[RejectionReason],[ActionDate] 
From stg.[Auct_ChargeVoID_Incr] 
Where [dbt_valid_to] is null
