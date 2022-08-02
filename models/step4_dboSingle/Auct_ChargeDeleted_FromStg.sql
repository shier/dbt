{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChargeID] as int) [ChargeID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([InvoiceID] as int) [InvoiceID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([IsTaxable] as nvarchar(4000)) [IsTaxable],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([BidderID] as int) [BidderID],
	cast([DealerID] as int) [DealerID],
	cast([VendorID] as int) [VendorID],
	cast([MediaID] as int) [MediaID],
	cast([SponsorID] as int) [SponsorID],
	cast([UserID] as int) [UserID],
	cast([Amount] as numeric(19,4)) [Amount] 
From stg.[Auct_ChargeDeleted_FinalView]