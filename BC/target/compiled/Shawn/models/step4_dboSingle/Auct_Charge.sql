
Select
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([UnitPrice] as numeric(19,4)) [UNITPRICE],
	cast([ChargeID] as int) [CHARGEID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([InvoiceID] as int) [INVOICEID],
	cast([Comments] as nvarchar(512)) [COMMENTS],
	cast([IsTaxable] as bit) [ISTAXABLE],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([BidderID] as int) [BIDDERID],
	cast([DealerID] as int) [DEALERID],
	cast([VendorID] as int) [VENDORID],
	cast([MediaID] as int) [MEDIAID],
	cast([SponsorID] as int) [SPONSORID],
	cast([UserID] as int) [USERID],
	cast([CanCancel] as int) [CANCANCEL],
	cast([CanceledByChargeID] as int) [CANCELEDBYCHARGEID],
	cast([CanceledChargeID] as int) [CANCELEDCHARGEID],
	cast([ReservationID] as int) [RESERVATIONID],
	cast([PEndingNavision] as nvarchar(512)) [PENDINGNAVISION],
	cast([OverrideReason] as nvarchar(512)) [OVERRIDEREASON],
	cast([ApprovalStateID] as int) [APPROVALSTATEID],
	cast([ApprovedByUserID] as int) [APPROVEDBYUSERID],
	cast([RejectionReason] as nvarchar(512)) [REJECTIONREASON],
	cast([ActionDate] as datetime) [ACTIONDATE],
	cast([DocumentID] as nvarchar(512)) [DOCUMENTID] 
From stg.[Auct_Charge_FinalView]