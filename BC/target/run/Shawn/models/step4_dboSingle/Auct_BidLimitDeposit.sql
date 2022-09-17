
  
  if object_id ('"dbo"."Auct_BidLimitDeposit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidLimitDeposit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidLimitDeposit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidLimitDeposit__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidLimitDeposit__dbt_tmp_temp_view as
    
Select
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([EnvelopeNumber] as numeric(18,6)) [ENVELOPENUMBER],
	cast([BidLimitDepositID] as int) [BIDLIMITDEPOSITID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([PaymentDate] as DATETIME) [PAYMENTDATE],
	cast([PaymentNumber] as nvarchar(4000)) [PAYMENTNUMBER],
	cast([PaymentCleared] as nvarchar(4000)) [PAYMENTCLEARED],
	cast([ClearedDate] as DATETIME) [CLEAREDDATE],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([BidderID] as int) [BIDDERID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ConfirmIDEntification] as nvarchar(4000)) [CONFIRMIDENTIFICATION],
	cast([ReceivedSignature] as nvarchar(4000)) [RECEIVEDSIGNATURE],
	cast([ConfirmedCount] as nvarchar(4000)) [CONFIRMEDCOUNT],
	cast([NoPurchase] as nvarchar(4000)) [NOPURCHASE],
	cast([ReturnedOnSite] as nvarchar(4000)) [RETURNEDONSITE],
	cast([Depositcashiering] as nvarchar(4000)) [DEPOSITCASHIERING],
	cast([Depositmailed] as nvarchar(4000)) [DEPOSITMAILED],
	cast([Mailedhome] as nvarchar(4000)) [MAILEDHOME],
	cast([MailedBusiness] as nvarchar(4000)) [MAILEDBUSINESS],
	cast([MailedOther] as nvarchar(4000)) [MAILEDOTHER],
	cast([ReturnedOnSiteText] as nvarchar(4000)) [RETURNEDONSITETEXT],
	cast([DepositcashieringText] as nvarchar(4000)) [DEPOSITCASHIERINGTEXT],
	cast([ReturnedComments] as nvarchar(4000)) [RETURNEDCOMMENTS],
	cast([ReturnedDate] as DATETIME) [RETURNEDDATE],
	cast([ReturnedUsersID] as int) [RETURNEDUSERSID],
	cast([PaymentID] as int) [PAYMENTID],
	cast([InvoiceID] as int) [INVOICEID],
	cast([RefundedByBidLimitDepositID] as int) [REFUNDEDBYBIDLIMITDEPOSITID],
	cast([RefundedBidLimitDepositID] as int) [REFUNDEDBIDLIMITDEPOSITID],
	cast([BidLimitDepositReturnTypeID] as int) [BIDLIMITDEPOSITRETURNTYPEID] 
From stg.[Auct_BidLimitDeposit_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidLimitDeposit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidLimitDeposit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidLimitDeposit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidLimitDeposit__dbt_tmp_temp_view"
    end


