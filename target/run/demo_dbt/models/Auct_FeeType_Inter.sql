
  
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
	DEFAULTAMOUNT DefaultAmount,
	DEFAULTPERCENTAGE DefaultPercentage,
	SHOWONWEB ShowonWeb,
	CREATED Created,
	WEBSTARTDATE WebStartDate,
	WEBENDDATE WebEndDate,
	TAXRATEID TaxRateID,
	AUCTIONID AuctionID,
	PROCESSORID ProcessorID,
	USEMULTIPLIER UseMultiplier,
	APPLICATIONREPORTID ApplicationReportID,
	ONLINEAPPLICATIONREPORTID OnlineApplicationReportID,
	FEETYPEID FeeTypeID,
	FEECATEGORYID FeeCategoryID,
	FEEPAYERID FeePayerID,
	UPDATEEVENTID UpdateEventID,
	cast(NAME as nvarchar(4000)) Name,
	cast(INACTIVE as nvarchar(4000)) InActive,
	cast(EXPIRATIONMESSAGE as nvarchar(4000)) ExpirationMessage,
	cast(FEETYPEGUID as nvarchar(4000)) FeeTypeGUID,
	cast(DOCUMENTID as nvarchar(4000)) DocumentID,
	cast(BCPROCESSFOR as nvarchar(4000)) BCProcessFor,
	cast(BCDOCUMENTTYPE as nvarchar(4000)) BCdocumentType,
	cast(DEBITPROCESSOR as nvarchar(4000)) DebitProcessor,
	cast(CREDITPROCESSOR as nvarchar(4000)) CreditProcessor,
	cast(PAYMENTPROCESSOR as nvarchar(4000)) PaymentProcessor,
	cast(REFUNDPROCESSOR as nvarchar(4000)) RefundProcessor,
	cast(AMENITIES as nvarchar(4000)) Amenities,
	cast(SECTIONTITLE as nvarchar(4000)) SectionTitle
From Auct_FeeType_Raw
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


