
  
  if object_id ('"stg"."Auct_FeeType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_FeeType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_FeeType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_FeeType_Inter__dbt_tmp_temp_view as
    
Select
	[FEETYPEID] [FeeTypeID],
	[SHOWONWEB] [ShowonWeb],
	[DEFAULTAMOUNT] [DefaultAmount],
	[DEFAULTPERCENTAGE] [DefaultPercentage],
	cast([NAME] as nvarchar(4000)) [Name],
	[FEECATEGORYID] [FeeCategoryID],
	[FEEPAYERID] [FeePayerID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[TAXRATEID] [TaxRateID],
	[AUCTIONID] [AuctionID],
	cast([INACTIVE] as nvarchar(4000)) [InActive],
	[PROCESSORID] [ProcessorID],
	[USEMULTIPLIER] [UseMultiplier],
	cast([DEBITPROCESSOR] as nvarchar(4000)) [DebitProcessor],
	cast([CREDITPROCESSOR] as nvarchar(4000)) [CreditProcessor],
	cast([PAYMENTPROCESSOR] as nvarchar(4000)) [PaymentProcessor],
	cast([REFUNDPROCESSOR] as nvarchar(4000)) [RefundProcessor],
	[WEBSTARTDATE] [WebStartDate],
	[WEBENDDATE] [WebEndDate],
	cast([AMENITIES] as nvarchar(4000)) [Amenities],
	cast([SECTIONTITLE] as nvarchar(4000)) [SectionTitle],
	cast([EXPIRATIONMESSAGE] as nvarchar(4000)) [ExpirationMessage],
	cast([FEETYPEGUID] as nvarchar(4000)) [FeeTypeGUID],
	[APPLICATIONREPORTID] [ApplicationReportID],
	[ONLINEAPPLICATIONREPORTID] [OnlineApplicationReportID],
	cast([DOCUMENTID] as nvarchar(4000)) [DocumentID],
	cast([BCPROCESSFOR] as nvarchar(4000)) [BCProcessFor],
	cast([BCDOCUMENTTYPE] as nvarchar(4000)) [BCdocumentType]
From stg.[Auct_FeeType_Raw]
    ');

  CREATE TABLE "stg"."Auct_FeeType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_FeeType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_FeeType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Inter__dbt_tmp_temp_view"
    end


