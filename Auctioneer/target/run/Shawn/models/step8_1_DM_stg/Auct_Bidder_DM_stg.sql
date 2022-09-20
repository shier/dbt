
  
  if object_id ('"stg"."Auct_Bidder_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Bidder_DM_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Bidder_DM_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Bidder_DM_stg__dbt_tmp"
    end


   EXEC('create view stg.Auct_Bidder_DM_stg__dbt_tmp_temp_view as
    
SELECT
   HASHBYTES(''SHA2_256'', 
        COALESCE(CAST([BIDDERID] AS VARCHAR(20)), '''')
    ) AS [Bidder_Skey],
    [BIDDERID] as  [BidderID],
    [BIDDERTYPEID] as  [BidderTypeID],
    [BIDDERSTATUSID] as  [BidderStatusID],
    [CUSTOMERACCOUNTID] as  [CustomerAccountID],
    [BIDDERNUMBER] as  [BidderNumber],
    [ANNIVERSARYDATE] as  [AnniversaryDate],
    [APPROVEDBY] as  [ApprovedByUserID],
    [COMMENTS] as  [Comments],
    [CREATED] as  [Created],
    [UPDATEEVENTID] as  [UpdateEventID],
    [BIDLIMIT] as  [BidLimit],
    [PAYMENTMETHODID] as  [PaymentMethodID],
    [ADDRESSID] as  [AddressID],
    [SHIPPINGADDRESSID] as  [ShippingAddressID],
    [CONTACTPHONEID] as [ContactPhoneID]

FROM [stg].[Auct_Bidder_FinalView]
    ');

  CREATE TABLE "stg"."Auct_Bidder_DM_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Bidder_DM_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Bidder_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Bidder_DM_stg__dbt_tmp_temp_view"
    end


