
  
  if object_id ('"stg"."Auct_AuctionSale_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionSale_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionSale_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionSale_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionSale_FT_tmp__dbt_tmp_temp_view as
    

WITH Auct_AuctionSale_temp_CTE AS (
    SELECT 
        aucsale.[temp_BlockSaleID_SaleID],
        cxaucbid.[AuctionBidder_Skey] AS [BlockSale_AuctionBidder_Skey],
        cxaucbid2.[AuctionBidder_Skey] AS [Sale_AuctionBidder_Skey],
        cxconsgt.[Consignor_Skey],
        aucsale.[BlockSaleID],
        aucsale.[BlockSaleAuctionBidderID],
        aucsale.[SaleAuctionBidderID],
        aucsale.[DocketID],
        aucsale.[AuctioneerID],
        auct.[Auctioneer_Skey], 
        COALESCE(car.[Item_Skey], automobilia.[Item_Skey]) AS [Item_Skey],
        -- [SaleStatusID_BlockSale],
        aucsale.[BlockSaleStatus],
        -- [SaleStatusID_Sale],
        aucsale.[SaleStatus],
        aucsale.[HammerPrice],
        aucsale.[ActualSalePrice],
        aucsale.[BlockSaleBuyerCommPct],
        aucsale.[SaleBuyerCommPct],
        aucsale.[BlockSaleBuyerCommDollars],
        aucsale.[SaleBuyerCommDollars],
        aucsale.[BlockSaleCommPct],
        aucsale.[SaleCommPct],
        aucsale.[BlockSaleCommDollars],
        aucsale.[SaleCommDollars],
        aucsale.[BlockSaleComments],
        aucsale.[SaleComments],
        aucsale.[BlockSaleBuyerCommOverride],
        aucsale.[BlockSaleSellerCommOverride],
        aucsale.[BlockSaleRunDate],
        aucsale.[BlockSaleStateTaxDollars],
        aucsale.[SaleStateTaxDollars],
        aucsale.[BlockSaleStateTaxRate], 
        aucsale.[SaleStateTaxRate], 
        aucsale.[BlockSaleCountyTaxDollars],
        aucsale.[SaleCountyTaxDollars],
        aucsale.[BlockSaleCountyTaxRate], 
        aucsale.[SaleCountyTaxRate], 
        aucsale.[BlockSaleCityTaxDollars],
        aucsale.[SaleCityTaxDollars],
        aucsale.[BlockSaleCityTaxRate], 
        aucsale.[SaleCityTaxRate], 
        aucsale.[BlockSaleTaxOverride],
        aucsale.[BlockSaleTaxExemptCode],
        aucsale.[SaleTaxExemptCode],
        aucsale.[BlockSaleCreated],
        aucsale.[BlockSaleUpdateEventID],
        aucsale.[SaleID], 
        aucsale.[ShipDateVerified],
        aucsale.[CarrierID],
        aucsale.[BuyerCustomerAccountID],
        aucsale.[SellerCustomerAccountID],
        aucsale.[ShipToAddressID],
        aucsale.[ShipToContactID],
        aucsale.[BillOfLading],
        aucsale.[BillOfLadingText],
        aucsale.[BMA],
        aucsale.[Legacy],
        aucsale.[ShipDate],
        aucsale.[NAVISION],
        aucsale.[BuyerDealerID],
        aucsale.[SellerAddressID],
        aucsale.[SellerDealerID],
        aucsale.[AlternateSaleType],
        aucsale.[SteveCommDollars],
        aucsale.[SteveCommPct],
        aucsale.[AssiterCommDollars],
        aucsale.[AssiterCommPct],
        aucsale.[Arbitrated],
        aucsale.[AdjustmentReason],
        aucsale.[AdjustedByUserName],
        aucsale.[AdjustmentDate],
        aucsale.[CarrierName],
        aucsale.[HoldWire],
        aucsale.[SaleCreated],
        aucsale.[SaleUpdateEventID]
    FROM [stg].[Auct_AuctionSale_FT_stg] aucsale 
    -- FOR [Auctioneer_Skey]
    LEFT JOIN [dbo].[Auct_Auctioneer_DM] auct 
        ON aucsale.[AuctioneerID]=auct.[Auctioneer_Skey]
    -- FOR [Consignment_Skey]
    LEFT JOIN [stg].[Auct_Docket_FinalView] docket 
        ON aucsale.[DOCKETID]=docket.[DOCKETID]
    LEFT JOIN [stg].[Auct_Consignment_FinalView] consgt 
        ON docket.[CONSIGNMENTID]=consgt.[CONSIGNMENTID]
    LEFT JOIN [dbo].[Auct_Customer_Consignor_DM] cxconsgt
        ON docket.[ConsignmentID]=cxconsgt.[ConsignmentID]
            -- ON aucsale.[SellerCustomerAccountID]=cxconsgt.[CustomerAccountID]
    -- FOR [Item_Skey]
    LEFT JOIN [dbo].[Auct_Car_DM] car 
        ON consgt.[ItemID]=car.[ItemID]
    LEFT JOIN [dbo].[Auct_Automobilia_DM] automobilia
        ON consgt.[ItemID]=automobilia.[ItemID]
    -- FOR [AuctionBidder_Skey]
    LEFT JOIN [dbo].[Auct_Customer_AuctionBidder_DM] cxaucbid
        ON aucsale.[BlockSaleAuctionBidderID]=cxaucbid.[AuctionBidderID]
            -- ON aucsale.[BuyerCustomerAccountID]=cxaucbid.[CustomerAccountID]
    LEFT JOIN [dbo].[Auct_Customer_AuctionBidder_DM] cxaucbid2
        ON aucsale.[SaleAuctionBidderID]=cxaucbid2.[AuctionBidderID]
)
SELECT 
    [temp_BlockSaleID_SaleID],
    [BlockSale_AuctionBidder_Skey],
    [Sale_AuctionBidder_Skey],
    [Consignor_Skey],
    [BlockSaleID],
    [BlockSaleAuctionBidderID],
    [SaleAuctionBidderID],
    [DocketID],
    [AuctioneerID], 
    [Auctioneer_Skey], 
    [Item_Skey],
    [BlockSaleStatus],
    [SaleStatus],
    [HammerPrice],
    [ActualSalePrice],
    [BlockSaleBuyerCommPct],
    [SaleBuyerCommPct],
    [BlockSaleBuyerCommDollars],
    [SaleBuyerCommDollars],
    [BlockSaleCommPct],
    [SaleCommPct],
    [BlockSaleCommDollars],
    [SaleCommDollars],
    [BlockSaleComments],
    [SaleComments],
    [BlockSaleBuyerCommOverride],
    [BlockSaleSellerCommOverride],
    [BlockSaleRunDate],
    [BlockSaleStateTaxDollars],
    [SaleStateTaxDollars],
    [BlockSaleStateTaxRate], 
    [SaleStateTaxRate], 
    [BlockSaleCountyTaxDollars],
    [SaleCountyTaxDollars],
    [BlockSaleCountyTaxRate], 
    [SaleCountyTaxRate], 
    [BlockSaleCityTaxDollars],
    [SaleCityTaxDollars],
    [BlockSaleCityTaxRate], 
    [SaleCityTaxRate], 
    [BlockSaleTaxOverride],
    [BlockSaleTaxExemptCode],
    [SaleTaxExemptCode],
    [BlockSaleCreated],
    [BlockSaleUpdateEventID],
    [SaleID], 
    [ShipDateVerified],
    [CarrierID],
    [BuyerCustomerAccountID],
    [SellerCustomerAccountID],
    [ShipToAddressID],
    [ShipToContactID],
    [BillOfLading],
    [BillOfLadingText],
    [BMA],
    [Legacy],
    [ShipDate],
    [NAVISION],
    [BuyerDealerID],
    [SellerAddressID],
    [SellerDealerID],
    [AlternateSaleType],
    [SteveCommDollars],
    [SteveCommPct],
    [AssiterCommDollars],
    [AssiterCommPct],
    [Arbitrated],
    [AdjustmentReason],
    [AdjustedByUserName],
    [AdjustmentDate],
    [CarrierName],
    [HoldWire],
    [SaleCreated],
    [SaleUpdateEventID]
FROM Auct_AuctionSale_temp_CTE
    ');

  CREATE TABLE "stg"."Auct_AuctionSale_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionSale_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionSale_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionSale_FT_tmp__dbt_tmp_temp_view"
    end


