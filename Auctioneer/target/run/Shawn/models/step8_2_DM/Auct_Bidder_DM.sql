
  
  if object_id ('"dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Bidder_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Bidder_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Bidder_DM__dbt_tmp_temp_view as
    

SELECT
	[Bidder_Skey],
	[BidderID],
	[BidderTypeID],
	[BidderStatusID],
	[CustomerAccountID],
	[BidderNumber],
	[AnniversaryDate],
	[ApprovedByUserID],
	[Comments],
	[Created],
	[UpdateEventID],
	[BidLimit],
	[PaymentMethodID],
	[AddressID],
	[ShippingAddressID],
	[ContactPhoneID]
FROM [stg].[Auct_Bidder_DM_stg]
    ');

  CREATE TABLE "dbo"."Auct_Bidder_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Bidder_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Bidder_DM__dbt_tmp_temp_view"
    end


