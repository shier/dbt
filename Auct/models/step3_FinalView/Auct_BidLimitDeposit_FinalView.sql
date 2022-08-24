{{ config(materialized='view',schema='stg')}}
Select
	[BidLimitDepositID],[Amount],[EnvelopeNumber],[PaymentMethodID],[PaymentDate],[PaymentNumber],[PaymentCleared],[ClearedDate],[Comments],[BidderID],[AuctionID],[Created],[UpdateEventID],[ConfirmIDEntification],[ReceivedSignature],[ConfirmedCount],[NoPurchase],[ReturnedOnSite],[Depositcashiering],[Depositmailed],[Mailedhome],[MailedBusiness],[MailedOther],[ReturnedOnSiteText],[DepositcashieringText],[ReturnedComments],[ReturnedDate],[ReturnedUsersID],[PaymentID],[InvoiceID],[RefundedByBidLimitDepositID],[RefundedBidLimitDepositID],[BidLimitDepositReturnTypeID] 
From stg.[Auct_BidLimitDeposit_Incr] 
Where [dbt_valid_to] is null