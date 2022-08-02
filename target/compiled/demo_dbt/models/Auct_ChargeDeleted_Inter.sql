
Select
	AMOUNT Amount,
	SPONSORID SponsorID,
	USERID UserID,
	INVOICEID InvoiceID,
	CONSIGNMENTID ConsignmentID,
	BIDDERID BidderID,
	DEALERID DealerID,
	VENDORID VendorID,
	MEDIAID MediaID,
	CHARGEID ChargeID,
	FEETYPEID FeeTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(ISTAXABLE as nvarchar(4000)) IsTaxable
From Auct_ChargeDeleted_Raw