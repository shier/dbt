
  
  if object_id ('"dbo"."Auct_FeeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType__dbt_tmp_temp_view as
    
Select
	cast([ShowonWeb] as bit) [SHOWONWEB],
	cast([DefaultAmount] as numeric(19,4)) [DEFAULTAMOUNT],
	cast([DefaultPercentage] as numeric(18,6)) [DEFAULTPERCENTAGE],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([FeeCategoryID] as int) [FEECATEGORYID],
	cast([FeePayerID] as int) [FEEPAYERID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([TaxRateID] as int) [TAXRATEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([InActive] as nvarchar(512)) [INACTIVE],
	cast([ProcessorID] as int) [PROCESSORID],
	cast([UseMultiplier] as int) [USEMULTIPLIER],
	cast([DebitProcessor] as nvarchar(512)) [DEBITPROCESSOR],
	cast([CreditProcessor] as nvarchar(512)) [CREDITPROCESSOR],
	cast([PaymentProcessor] as nvarchar(512)) [PAYMENTPROCESSOR],
	cast([RefundProcessor] as nvarchar(512)) [REFUNDPROCESSOR],
	cast([WebStartDate] as datetime) [WEBSTARTDATE],
	cast([WebEndDate] as datetime) [WEBENDDATE],
	cast([Amenities] as nvarchar(512)) [AMENITIES],
	cast([SectionTitle] as nvarchar(512)) [SECTIONTITLE],
	cast([ExpirationMessage] as nvarchar(512)) [EXPIRATIONMESSAGE],
	cast([FeeTypeGUID] as nvarchar(512)) [FEETYPEGUID],
	cast([ApplicationReportID] as int) [APPLICATIONREPORTID],
	cast([OnlineApplicationReportID] as int) [ONLINEAPPLICATIONREPORTID],
	cast([DocumentID] as nvarchar(512)) [DOCUMENTID],
	cast([BCProcessFor] as nvarchar(512)) [BCPROCESSFOR],
	cast([BCdocumentType] as nvarchar(512)) [BCDOCUMENTTYPE] 
From stg.[Auct_FeeType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType__dbt_tmp_temp_view"
    end


