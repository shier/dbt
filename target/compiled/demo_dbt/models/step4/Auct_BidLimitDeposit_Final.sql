
Select
	[BidLimitDepositID],[Amount],[EnvelopeNumber],[ReturnedComments],[Depositmailed],[Mailedhome],[MailedBusiness],[MailedOther],[ReturnedOnSiteText],[DepositcashieringText],[ConfirmIDEntification],[ReceivedSignature],[ConfirmedCount],[NoPurchase],[ReturnedOnSite],[Depositcashiering],[PaymentNumber],[PaymentCleared],[Comments],[PaymentDate],[ClearedDate],[Created],[ReturnedDate],[PaymentID],[InvoiceID],[RefundedByBidLimitDepositID],[RefundedBidLimitDepositID],[BidLimitDepositReturnTypeID],[PaymentMethodID],[BidderID],[AuctionID],[UpdateEventID],[ReturnedUsersID] 
From stg.[Auct_BidLimitDeposit_Incr] 
Where [dbt_valid_to] is null