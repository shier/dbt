
Select
	[PaymentID],[PaymentMethodID],[BankAccountID],[UpdateEventID],[InvoiceID],[RefundedByPaymentID],[RefundedPaymentID],[RefundApprovedByUserID],[ClearedDate],[PaymentDate],[Created],[AmountPaID],[PaymentNumber],[PaymentCleared],[Comments],[IsLotPayment] 
From stg.[Auct_Payment_Incr] 
Where [dbt_valid_to] is null