
  
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
	[BidLimitDepositID],[Amount],[EnvelopeNumber],[PaymentMethodID],[PaymentDate],[PaymentNumber],[PaymentCleared],[ClearedDate],[Comments],[BidderID],[AuctionID],[Created],[UpdateEventID],[ConfirmIDEntification],[ReceivedSignature],[ConfirmedCount],[NoPurchase],[ReturnedOnSite],[Depositcashiering],[Depositmailed],[Mailedhome],[MailedBusiness],[MailedOther],[ReturnedOnSiteText],[DepositcashieringText],[ReturnedComments],[ReturnedDate],[ReturnedUsersID],[PaymentID],[InvoiceID],[RefundedByBidLimitDepositID],[RefundedBidLimitDepositID],[BidLimitDepositReturnTypeID] 
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


