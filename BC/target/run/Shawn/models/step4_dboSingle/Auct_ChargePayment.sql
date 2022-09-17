
  
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
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([ChargePaymentID] as int) [CHARGEPAYMENTID],
	cast([PaymentID] as int) [PAYMENTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([BidderID] as int) [BIDDERID],
	cast([VendorID] as int) [VENDORID],
	cast([MediaID] as int) [MEDIAID],
	cast([SponsorID] as int) [SPONSORID],
	cast([ChargeID] as int) [CHARGEID],
	cast([RefundState] as int) [REFUNDSTATE] 
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


