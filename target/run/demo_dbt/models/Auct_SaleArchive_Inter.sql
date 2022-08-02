
  
  if object_id ('"stg"."Auct_SaleArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleArchive_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleArchive_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleArchive_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleArchive_Inter__dbt_tmp_temp_view as
    
Select
	CityTaxRate CityTaxRate,
	SteveCommDollars SteveCommDollars,
	SteveCommPerc SteveCommPerc,
	AssiterCommDollars AsSiterCommDollars,
	AssiterCommPerc AsSiterCommPerc,
	Price Price,
	BuyerCommPerc BuyerCommPerc,
	BuyerCommDollars BuyerCommDollars,
	CommPerc CommPerc,
	CommDollars CommDollars,
	StateTaxDollars StateTaxDollars,
	StateTaxRate StateTaxRate,
	CountyTaxDollars CountyTaxDollars,
	CountyTaxRate CountyTaxRate,
	CityTaxDollars CityTaxDollars,
	SALEARCHIVEID SaleArchiveID,
	SALEID SaleID,
	BLOCKSALEID BlockSaleID,
	CARRIERID CarrierID,
	CREATED Created,
	SHIPDATE ShipDate,
	AdjustmentDate AdjustmentDate,
	BUYERDEALERID BuyerdealerID,
	SELLERADDRESSID SellerAddressID,
	SELLERDEALERID SellerDealerID,
	AlternateSaleType AlternateSaleType,
	SaleStatusId SaleStatusID,
	AuctionBidderId AuctionBidderID,
	BUYERCUSTOMERACCOUNTID BuyerCustomerAccountID,
	SELLERCUSTOMERACCOUNTID SellerCustomerAccountID,
	SHIPTOADDRESSID ShiptoAddressID,
	SHIPTOCONTACTID ShiptoContactID,
	UPDATEEVENTID UpdateEventID,
	LEGACY Legacy,
	cast(SHIPDATEVERIFIED as nvarchar(4000)) ShipDateVerified,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(AdjustmentReason as nvarchar(4000)) AdjustmentReason,
	cast(AdjustedByUserName as nvarchar(4000)) AdjustedByUserName,
	cast(CARRIERNAME as nvarchar(4000)) CarrierName,
	cast(BILLOFLADING as nvarchar(4000)) BillofLading,
	cast(BILLOFLADINGTEXT as nvarchar(4000)) BillofLadingText,
	cast(BMA as nvarchar(4000)) BMA,
	cast(NAVISION as nvarchar(4000)) Navision,
	cast(TaxExemptCode as nvarchar(4000)) TaxExemptCode,
	cast(Arbitrated as nvarchar(4000)) ArBitrated
From Auct_SaleArchive_Raw
    ');

  CREATE TABLE "stg"."Auct_SaleArchive_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleArchive_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleArchive_Inter__dbt_tmp_temp_view"
    end


