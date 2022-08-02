{{ config(materialized='view',schema='stg')}}
Select
	[ChargeID],[Amount],[UnitPrice],[FeeTypeID],[Created],[UpdateEventID],[InvoiceID],[Comments],[IsTaxable],[ConsignmentID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[CanCancel],[CanceledByChargeID],[CanceledChargeID],[ReservationID],[PEndingNavision],[OverrideReason],[ApprovalStateID],[ApprovedByUserID],[RejectionReason],[ActionDate],[DocumentID] 
From stg.[Auct_Charge_Incr] 
Where [dbt_valid_to] is null