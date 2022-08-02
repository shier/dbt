
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