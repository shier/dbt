{{ config(materialized='view',schema='stg')}}
Select
	[CHARGEID] [ChargeID],
	[FEETYPEID] [FeeTypeID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[INVOICEID] [InvoiceID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	cast([ISTAXABLE] as nvarchar(4000)) [IsTaxable],
	[CONSIGNMENTID] [ConsignmentID],
	[BIDDERID] [BidderID],
	[DEALERID] [DealerID],
	[VENDORID] [VendorID],
	[MEDIAID] [MediaID],
	[SPONSORID] [SponsorID],
	[USERID] [UserID],
	[AMOUNT] [Amount]
From stg.[Auct_ChargeDeleted_Raw]
