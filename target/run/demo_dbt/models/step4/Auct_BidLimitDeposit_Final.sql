
  
  if object_id ('"stg"."Auct_BidLimitDeposit_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidLimitDeposit_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidLimitDeposit_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidLimitDeposit_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidLimitDeposit_Final__dbt_tmp_temp_view as
    
Select
	[BidLimitDepositID],[Amount],[EnvelopeNumber],[ReturnedComments],[Depositmailed],[Mailedhome],[MailedBusiness],[MailedOther],[ReturnedOnSiteText],[DepositcashieringText],[ConfirmIDEntification],[ReceivedSignature],[ConfirmedCount],[NoPurchase],[ReturnedOnSite],[Depositcashiering],[PaymentNumber],[PaymentCleared],[Comments],[PaymentDate],[ClearedDate],[Created],[ReturnedDate],[PaymentID],[InvoiceID],[RefundedByBidLimitDepositID],[RefundedBidLimitDepositID],[BidLimitDepositReturnTypeID],[PaymentMethodID],[BidderID],[AuctionID],[UpdateEventID],[ReturnedUsersID] 
From stg.[Auct_BidLimitDeposit_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_BidLimitDeposit_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidLimitDeposit_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidLimitDeposit_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidLimitDeposit_Final__dbt_tmp_temp_view"
    end


