
  
  if object_id ('"dbo"."Auct_SaleArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleArchive__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SaleArchive__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SaleArchive__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SaleArchive__dbt_tmp_temp_view as
    
Select
	cast([CountyTaxDollars] as numeric(19,4)) [CountyTaxDollars],
	cast([CountyTaxRate] as numeric(18,6)) [CountyTaxRate],
	cast([CityTaxDollars] as numeric(19,4)) [CityTaxDollars],
	cast([CityTaxRate] as numeric(18,6)) [CityTaxRate],
	cast([SteveCommDollars] as numeric(19,4)) [SteveCommDollars],
	cast([SteveCommPerc] as numeric(18,6)) [SteveCommPerc],
	cast([BuyerCommPerc] as numeric(18,6)) [BuyerCommPerc],
	cast([BuyerCommDollars] as numeric(19,4)) [BuyerCommDollars],
	cast([CommPerc] as numeric(18,6)) [CommPerc],
	cast([CommDollars] as numeric(19,4)) [CommDollars],
	cast([StateTaxDollars] as numeric(19,4)) [StateTaxDollars],
	cast([StateTaxRate] as numeric(18,6)) [StateTaxRate],
	cast([AsSiterCommDollars] as numeric(19,4)) [AssiterCommDollars],
	cast([AsSiterCommPerc] as numeric(18,6)) [AssiterCommPerc],
	cast([Price] as numeric(19,4)) [Price],
	cast([SaleArchiveID] as int) [SALEARCHIVEID],
	cast([SaleID] as int) [SALEID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([ShipDateVerified] as nvarchar(4000)) [SHIPDATEVERIFIED],
	cast([CarrierID] as int) [CARRIERID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([BuyerCustomerAccountID] as int) [BUYERCUSTOMERACCOUNTID],
	cast([SellerCustomerAccountID] as int) [SELLERCUSTOMERACCOUNTID],
	cast([ShiptoAddressID] as int) [SHIPTOADDRESSID],
	cast([ShiptoContactID] as int) [SHIPTOCONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BillofLading] as nvarchar(4000)) [BILLOFLADING],
	cast([BillofLadingText] as nvarchar(4000)) [BILLOFLADINGTEXT],
	cast([BMA] as nvarchar(4000)) [BMA],
	cast([Legacy] as int) [LEGACY],
	cast([ShipDate] as datetime) [SHIPDATE],
	cast([Navision] as nvarchar(4000)) [NAVISION],
	cast([BuyerdealerID] as int) [BUYERDEALERID],
	cast([SellerAddressID] as int) [SELLERADDRESSID],
	cast([SellerDealerID] as int) [SELLERDEALERID],
	cast([AlternateSaleType] as int) [AlternateSaleType],
	cast([SaleStatusID] as int) [SaleStatusId],
	cast([AuctionBidderID] as int) [AuctionBidderId],
	cast([TaxExemptCode] as nvarchar(4000)) [TaxExemptCode],
	cast([ArBitrated] as nvarchar(4000)) [Arbitrated],
	cast([AdjustmentReason] as nvarchar(4000)) [AdjustmentReason],
	cast([AdjustedByUserName] as nvarchar(4000)) [AdjustedByUserName],
	cast([AdjustmentDate] as datetime) [AdjustmentDate],
	cast([CarrierName] as nvarchar(4000)) [CARRIERNAME] 
From stg.[Auct_SaleArchive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SaleArchive__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SaleArchive__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SaleArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleArchive__dbt_tmp_temp_view"
    end


