
  
  if object_id ('"dbo"."Auct_ChargeDeleted__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeDeleted__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ChargeDeleted__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ChargeDeleted__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ChargeDeleted__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."Auct_ChargeDeleted__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ChargeDeleted__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ChargeDeleted__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeDeleted__dbt_tmp_temp_view"
    end


