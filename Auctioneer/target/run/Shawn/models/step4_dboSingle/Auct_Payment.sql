
  
  if object_id ('"dbo"."Auct_Payment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Payment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Payment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Payment__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Payment__dbt_tmp_temp_view as
    
Select
	cast([PaymentID] as int) [PAYMENTID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([PaymentDate] as datetime) [PAYMENTDATE],
	cast([BankAccountID] as int) [BANKACCOUNTID],
	cast([PaymentNumber] as nvarchar(512)) [PAYMENTNUMBER],
	cast([PaymentCleared] as nvarchar(512)) [PAYMENTCLEARED],
	cast([Comments] as nvarchar(512)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([InvoiceID] as int) [INVOICEID],
	cast([IsLotPayment] as nvarchar(512)) [ISLOTPAYMENT],
	cast([ClearedDate] as datetime) [CLEAREDDATE],
	cast([RefundedByPaymentID] as int) [REFUNDEDBYPAYMENTID],
	cast([RefundedPaymentID] as int) [REFUNDEDPAYMENTID],
	cast([RefundApprovedByUserID] as int) [REFUNDAPPROVEDBYUSERID],
	cast([AmountPaID] as numeric(19,4)) [AMOUNTPAID] 
From stg.[Auct_Payment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Payment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Payment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Payment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Payment__dbt_tmp_temp_view"
    end


