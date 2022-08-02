
  
  if object_id ('"stg"."Auct_SaleHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleHistory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleHistory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleHistory_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleHistory_Inter__dbt_tmp_temp_view as
    
Select
	cast(BMA as nvarchar(4000)) BMA,
	cast(NAVISION as nvarchar(4000)) Navision,
	cast(SHIPDATEVERIFIED as nvarchar(4000)) ShipDateVerified,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(BILLOFLADING as nvarchar(4000)) BillofLading,
	cast(BILLOFLADINGTEXT as nvarchar(4000)) BillofLadingText,
	CREATED Created,
	SHIPDATE ShipDate,
	SHIPTOCONTACTID ShiptoContactID,
	UPDATEEVENTID UpdateEventID,
	LEGACY Legacy,
	BUYERDEALERID BuyerdealerID,
	SELLERADDRESSID SellerAddressID,
	SELLERDEALERID SellerDealerID,
	SALEID SaleID,
	BLOCKSALEID BlockSaleID,
	CARRIERID CarrierID,
	BUYERCUSTOMERACCOUNTID BuyerCustomerAccountID,
	SELLERCUSTOMERACCOUNTID SellerCustomerAccountID,
	SHIPTOADDRESSID ShiptoAddressID
From Auct_SaleHistory_Raw
    ');

  CREATE TABLE "stg"."Auct_SaleHistory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleHistory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleHistory_Inter__dbt_tmp_temp_view"
    end


