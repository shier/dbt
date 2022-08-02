
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(PaymentMethodID as varchar), Cast(BankAccountID as varchar), Cast(UpdateEventID as varchar), Cast(InvoiceID as varchar), Cast(RefundedByPaymentID as varchar), Cast(RefundedPaymentID as varchar), Cast(RefundApprovedByUserID as varchar), Cast(ClearedDate as varchar), Cast(PaymentDate as varchar), Cast(Created as varchar), Cast(AmountPaID as varchar), PaymentNumber, PaymentCleared, Comments, IsLotPayment)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Payment_Inter]
	)
Select * From hashData
