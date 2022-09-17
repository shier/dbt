{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChargeID] as int) [CHARGEID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([InvoiceID] as int) [INVOICEID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([IsTaxable] as nvarchar(4000)) [ISTAXABLE],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([BidderID] as int) [BIDDERID],
	cast([DealerID] as int) [DEALERID],
	cast([VendorID] as int) [VENDORID],
	cast([MediaID] as int) [MEDIAID],
	cast([SponsorID] as int) [SPONSORID],
	cast([UserID] as int) [USERID],
	cast([Amount] as numeric(19,4)) [AMOUNT] 
From stg.[Auct_ChargeDeleted_FinalView]