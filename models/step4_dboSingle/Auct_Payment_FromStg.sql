{{ config(materialized='table',schema='dbo')}}
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