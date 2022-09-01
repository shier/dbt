create view "stg"."Auct_Payment_FinalView__dbt_tmp" as
    
Select
	[PaymentID],[PaymentMethodID],[PaymentDate],[BankAccountID],[PaymentNumber],[PaymentCleared],[Comments],[Created],[UpdateEventID],[InvoiceID],[IsLotPayment],[ClearedDate],[RefundedByPaymentID],[RefundedPaymentID],[RefundApprovedByUserID],[AmountPaID] 
From stg.[Auct_Payment_Incr] 
Where [dbt_valid_to] is null
