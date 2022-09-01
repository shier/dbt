{{ config(materialized='view',schema='stg')}}
Select
	[PAYMENTID] [PaymentID],
	[PAYMENTMETHODID] [PaymentMethodID],
	[PAYMENTDATE] [PaymentDate],
	[BANKACCOUNTID] [BankAccountID],
	cast([PAYMENTNUMBER] as nvarchar(4000)) [PaymentNumber],
	cast([PAYMENTCLEARED] as nvarchar(4000)) [PaymentCleared],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[INVOICEID] [InvoiceID],
	cast([ISLOTPAYMENT] as nvarchar(4000)) [IsLotPayment],
	[CLEAREDDATE] [ClearedDate],
	[REFUNDEDBYPAYMENTID] [RefundedByPaymentID],
	[REFUNDEDPAYMENTID] [RefundedPaymentID],
	[REFUNDAPPROVEDBYUSERID] [RefundApprovedByUserID],
	[AMOUNTPAID] [AmountPaID]
From stg.[Auct_Payment_Raw]
