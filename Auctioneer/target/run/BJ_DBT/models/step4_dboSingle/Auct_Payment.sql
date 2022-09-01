
  
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
	cast([PaymentID] as int) [PaymentID],
	cast([PaymentMethodID] as int) [PaymentmethodID],
	cast([PaymentDate] as datetime) [PaymentDate],
	cast([BankAccountID] as int) [BankaccountID],
	cast([PaymentNumber] as nvarchar(512)) [Paymentnumber],
	cast([PaymentCleared] as nvarchar(512)) [Paymentcleared],
	cast([Comments] as nvarchar(512)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([InvoiceID] as int) [InvoiceID],
	cast([IsLotPayment] as nvarchar(512)) [IsLotPayment],
	cast([ClearedDate] as datetime) [ClearedDate],
	cast([RefundedByPaymentID] as int) [RefundedByPaymentID],
	cast([RefundedPaymentID] as int) [RefundedPaymentID],
	cast([RefundApprovedByUserID] as int) [RefundApprovedByUserID],
	cast([AmountPaID] as numeric(19,4)) [AmountpaID] 
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


