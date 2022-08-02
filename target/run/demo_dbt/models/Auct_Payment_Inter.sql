
  
  if object_id ('"stg"."Auct_Payment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Payment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Payment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Payment_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Payment_Inter__dbt_tmp_temp_view as
    
Select
	PAYMENTID PaymentID,
	PAYMENTMETHODID PaymentMethodID,
	BANKACCOUNTID BankAccountID,
	UPDATEEVENTID UpdateEventID,
	INVOICEID InvoiceID,
	REFUNDEDBYPAYMENTID RefundedByPaymentID,
	REFUNDEDPAYMENTID RefundedPaymentID,
	REFUNDAPPROVEDBYUSERID RefundApprovedByUserID,
	CLEAREDDATE ClearedDate,
	PAYMENTDATE PaymentDate,
	CREATED Created,
	AMOUNTPAID AmountPaID,
	cast(PAYMENTNUMBER as nvarchar(4000)) PaymentNumber,
	cast(PAYMENTCLEARED as nvarchar(4000)) PaymentCleared,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(ISLOTPAYMENT as nvarchar(4000)) IsLotPayment
From Auct_Payment_Raw
    ');

  CREATE TABLE "stg"."Auct_Payment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Payment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Payment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Payment_Inter__dbt_tmp_temp_view"
    end


