
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Amount as varchar), Cast(UnitPrice as varchar), Comments, IsTaxable, PEndingNavision, OverrideReason, RejectionReason, Cast(DealerID as varchar), Cast(VendorID as varchar), Cast(MediaID as varchar), Cast(SponsorID as varchar), Cast(UserID as varchar), Cast(CanCancel as varchar), Cast(ChargeID as varchar), Cast(FeeTypeID as varchar), Cast(UpdateEventID as varchar), Cast(InvoiceID as varchar), Cast(ConsignmentID as varchar), Cast(BidderID as varchar), Cast(CanceledByChargeID as varchar), Cast(CanceledChargeID as varchar), Cast(ReservationID as varchar), Cast(ApprovalStateID as varchar), Cast(ApprovedByUserID as varchar), Cast(Created as varchar), Cast(ActionDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargeVoid_Inter]
	)
Select * From hashData
