
  
  if object_id ('"stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp_temp_view as
    
Select
	[FEETYPEID] [FeeTypeID],
	[ACTIVE] [Active],
	[AUCTIONID] [AuctionID],
	[CREATEDBYUSERID] [CreatedByUserID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_ChargeatSaleAuctionFeeType_Raw]
    ');

  CREATE TABLE "stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeatSaleAuctionFeeType_Inter__dbt_tmp_temp_view"
    end


