
  
  if object_id ('"stg"."Auct_VendorAuction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorAuction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_VendorAuction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_VendorAuction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_VendorAuction_Inter__dbt_tmp_temp_view as
    
Select
	cast(COMMENTS as nvarchar(4000)) Comments,
	SPACECOST Spacecost,
	SPECIALVENDORVALUE SpecialVendorValue,
	CONTRACTDATE ContractDate,
	APPLICATIONDATE ApplicationDate,
	CREATED Created,
	LEGACY_VENDORID Legacy_VendorID,
	SPECIALVENDORTYPEID SpecialVendorTypeID,
	VENDORAUCTIONID VendorAuctionID,
	AUCTIONID AuctionID,
	VENDORID VendorID,
	UPDATEEVENTID UpdateEventID
From Auct_VendorAuction_Raw
    ');

  CREATE TABLE "stg"."Auct_VendorAuction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_VendorAuction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_VendorAuction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_VendorAuction_Inter__dbt_tmp_temp_view"
    end


