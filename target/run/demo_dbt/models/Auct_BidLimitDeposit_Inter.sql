
  
  if object_id ('"stg"."Auct_BidLimitDeposit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidLimitDeposit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidLimitDeposit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidLimitDeposit_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidLimitDeposit_Inter__dbt_tmp_temp_view as
    
Select
	AMOUNT Amount,
	ENVELOPENUMBER EnvelopeNumber,
	cast(RETURNEDCOMMENTS as nvarchar(4000)) ReturnedComments,
	cast(DEPOSITMAILED as nvarchar(4000)) Depositmailed,
	cast(MAILEDHOME as nvarchar(4000)) Mailedhome,
	cast(MAILEDBUSINESS as nvarchar(4000)) MailedBusiness,
	cast(MAILEDOTHER as nvarchar(4000)) MailedOther,
	cast(RETURNEDONSITETEXT as nvarchar(4000)) ReturnedOnSiteText,
	cast(DEPOSITCASHIERINGTEXT as nvarchar(4000)) DepositcashieringText,
	cast(CONFIRMIDENTIFICATION as nvarchar(4000)) ConfirmIDEntification,
	cast(RECEIVEDSIGNATURE as nvarchar(4000)) ReceivedSignature,
	cast(CONFIRMEDCOUNT as nvarchar(4000)) ConfirmedCount,
	cast(NOPURCHASE as nvarchar(4000)) NoPurchase,
	cast(RETURNEDONSITE as nvarchar(4000)) ReturnedOnSite,
	cast(DEPOSITCASHIERING as nvarchar(4000)) Depositcashiering,
	cast(PAYMENTNUMBER as nvarchar(4000)) PaymentNumber,
	cast(PAYMENTCLEARED as nvarchar(4000)) PaymentCleared,
	cast(COMMENTS as nvarchar(4000)) Comments,
	PAYMENTDATE PaymentDate,
	CLEAREDDATE ClearedDate,
	CREATED Created,
	RETURNEDDATE ReturnedDate,
	PAYMENTID PaymentID,
	INVOICEID InvoiceID,
	REFUNDEDBYBIDLIMITDEPOSITID RefundedByBidLimitDepositID,
	REFUNDEDBIDLIMITDEPOSITID RefundedBidLimitDepositID,
	BIDLIMITDEPOSITRETURNTYPEID BidLimitDepositReturnTypeID,
	BIDLIMITDEPOSITID BidLimitDepositID,
	PAYMENTMETHODID PaymentMethodID,
	BIDDERID BidderID,
	AUCTIONID AuctionID,
	UPDATEEVENTID UpdateEventID,
	RETURNEDUSERSID ReturnedUsersID
From Auct_BidLimitDeposit_Raw
    ');

  CREATE TABLE "stg"."Auct_BidLimitDeposit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidLimitDeposit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidLimitDeposit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidLimitDeposit_Inter__dbt_tmp_temp_view"
    end


