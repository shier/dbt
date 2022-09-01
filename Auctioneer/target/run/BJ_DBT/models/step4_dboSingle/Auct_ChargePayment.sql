
  
  if object_id ('"dbo"."Auct_ChargePayment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargePayment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ChargePayment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ChargePayment__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ChargePayment__dbt_tmp_temp_view as
    
Select
	cast([ChargePaymentID] as int) [ChargePaymentID],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([PaymentID] as int) [PaymentID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([BidderID] as int) [BidderID],
	cast([VendorID] as int) [VendorID],
	cast([MediaID] as int) [MediaID],
	cast([SponsorID] as int) [SponsorID],
	cast([ChargeID] as int) [ChargeID],
	cast([RefundState] as int) [RefundState] 
From stg.[Auct_ChargePayment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ChargePayment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ChargePayment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ChargePayment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargePayment__dbt_tmp_temp_view"
    end


