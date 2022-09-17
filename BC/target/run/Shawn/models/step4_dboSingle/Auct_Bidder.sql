
  
  if object_id ('"dbo"."Auct_Bidder__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Bidder__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Bidder__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Bidder__dbt_tmp_temp_view as
    
Select
	cast([BidderNumber] as numeric(18,2)) [BIDDERNUMBER],
	cast([BidLimit] as money) [BIDLIMIT],
	cast([BidderID] as int) [BIDDERID],
	cast([BidderTypeID] as int) [BIDDERTYPEID],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AnniversaryDate] as datetime) [ANNIVERSARYDATE],
	cast([ApprovedBy] as int) [APPROVEDBY],
	cast([Comments] as varchar(512)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([AddressID] as int) [ADDRESSID],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([ContactPhoneID] as int) [CONTACTPHONEID] 
From stg.[Auct_Bidder_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Bidder__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Bidder__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Bidder__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder__dbt_tmp_temp_view"
    end


