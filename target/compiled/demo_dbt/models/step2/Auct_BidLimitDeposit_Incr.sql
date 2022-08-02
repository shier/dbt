
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Amount as varchar), Cast(EnvelopeNumber as varchar), ReturnedComments, Depositmailed, Mailedhome, MailedBusiness, MailedOther, ReturnedOnSiteText, DepositcashieringText, ConfirmIDEntification, ReceivedSignature, ConfirmedCount, NoPurchase, ReturnedOnSite, Depositcashiering, PaymentNumber, PaymentCleared, Comments, Cast(PaymentDate as varchar), Cast(ClearedDate as varchar), Cast(Created as varchar), Cast(ReturnedDate as varchar), Cast(PaymentID as varchar), Cast(InvoiceID as varchar), Cast(RefundedByBidLimitDepositID as varchar), Cast(RefundedBidLimitDepositID as varchar), Cast(BidLimitDepositReturnTypeID as varchar), Cast(PaymentMethodID as varchar), Cast(BidderID as varchar), Cast(AuctionID as varchar), Cast(UpdateEventID as varchar), Cast(ReturnedUsersID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidLimitDeposit_Inter]
	)
Select * From hashData
