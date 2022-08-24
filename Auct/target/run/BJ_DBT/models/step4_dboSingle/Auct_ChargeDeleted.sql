
  
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


