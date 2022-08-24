
  
  if object_id ('"dbo"."Auct_AuctionSale_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionSale_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionSale_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionSale_FT__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionSale_FT__dbt_tmp_temp_view as
    
SELECT 
    HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST(blocksale.[BLOCKSALEID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST(sale.[SALEID] AS VARCHAR(20)), '''')
        )
    ) AS [temp_BlockSaleID_SaleID],
    blocksale.[BLOCKSALEID],
    -- sale.[BLOCKSALEID], 
    blocksale.[AUCTIONBIDDERID] AS [BlockSaleAuctionBidderID],
    sale.[AuctionBidderId] AS [SaleAuctionBidderID], -- ISNULL(sale.[AuctionBidderId], aucbid.[AUCTIONBIDDERID]) AS [SaleAuctionBidderID], -- NOT DOABLE
    blocksale.[DOCKETID],
    blocksale.[AUCTIONEERID],
    -- COALESCE(car.[Item_Skey], automobilia.[Item_Skey]) AS [Item_Skey],
    -- blocksale.[SALESTATUSID] AS [SaleStatusID_BlockSale],
    CASE WHEN blocksale.[SALESTATUSID]=salestatus.[SALESTATUSID] 
        THEN salestatus.[NAME]
    ELSE NULL
    END AS [BlockSaleStatus],
    -- sale.[SaleStatusId] AS [SaleStatusID_Sale],
    CASE WHEN sale.[SaleStatusId]=salestatus2.[SALESTATUSID]
        THEN salestatus2.[NAME]
    ELSE NULL
    END AS [SaleStatus],
    blocksale.[PRICE] AS [HammerPrice],
    sale.[Price] AS [ActualSalePrice],
    blocksale.[BUYERCOMMPERC] AS [BlockSaleBuyerCommPct],
    sale.[BuyerCommPerc] AS [SaleBuyerCommPct],
    blocksale.[BUYERCOMMDOLLARS] AS [BlockSaleBuyerCommDollars],
    sale.[BuyerCommDollars] AS [SaleBuyerCommDollars],
    blocksale.[COMMPERC] AS [BlockSaleCommPct],
    sale.[CommPerc] AS [SaleCommPct],
    blocksale.[COMMDOLLARS] AS [BlockSaleCommDollars],
    sale.[CommDollars] AS [SaleCommDollars],
    NULLIF(blocksale.[COMMENTS], '''') AS [BlockSaleComments],
    NULLIF(sale.[COMMENTS], '''') AS [SaleComments],
    blocksale.[BUYERCOMMOVERRIDE] AS [BlockSaleBuyerCommOverride],
    blocksale.[SELLERCOMMOVERRIDE] AS [BlockSaleSellerCommOverride],
    blocksale.[RUNDATE] AS [BlockSaleRunDate],
    blocksale.[STATETAXDOLLARS] AS [BlockSaleStateTaxDollars],
    sale.[StateTaxDollars] AS [SaleStateTaxDollars],
    blocksale.[STATETAXRATE] AS [BlockSaleStateTaxRate],
    sale.[StateTaxRate] AS [SaleStateTaxRate],
    blocksale.[COUNTYTAXDOLLARS] AS [BlockSaleCountyTaxDollars],
    sale.[CountyTaxDollars] AS [SaleCountyTaxDollars],
    blocksale.[COUNTYTAXRATE] AS [BlockSaleCountyTaxRate],
    sale.[CountyTaxRate] AS [SaleCountyTaxRate],
    blocksale.[CITYTAXDOLLARS] AS [BlockSaleCityTaxDollars],
    sale.[CityTaxDollars] AS [SaleCityTaxDollars],
    blocksale.[CITYTAXRATE] AS [BlockSaleCityTaxRate],
    sale.[CityTaxRate] AS [SaleCityTaxRate],
    blocksale.[TAXOVERRIDE] AS [BlockSaleTaxOverride],
    NULLIF(blocksale.[TAXEXEMPTCODE], '''') AS [BlockSaleTaxExemptCode],
    NULLIF(sale.[TaxExemptCode], '''') AS [SaleTaxExemptCode],
    blocksale.[CREATED] AS [Created_BlockSale],
    blocksale.[UPDATEEVENTID] AS [UpdateEventID_BlockSale],
    sale.[SALEID],
    sale.[SHIPDATEVERIFIED],
    sale.[CARRIERID],
    sale.[BUYERCUSTOMERACCOUNTID],
    sale.[SELLERCUSTOMERACCOUNTID],
    sale.[SHIPTOADDRESSID],
    sale.[SHIPTOCONTACTID],
    NULLIF(sale.[BILLOFLADING], '''') AS [BillOfLading],
    sale.[BILLOFLADINGTEXT],
    sale.[BMA],
    sale.[LEGACY],
    sale.[SHIPDATE],
    sale.[NAVISION],
    sale.[BUYERDEALERID],
    sale.[SELLERADDRESSID],
    sale.[SELLERDEALERID],
    sale.[AlternateSaleType],
    sale.[SteveCommDollars],
    sale.[SteveCommPerc] AS [SteveCommPct],
    sale.[AssiterCommDollars],
    sale.[AssiterCommPerc] AS [AssiterCommPct],
    sale.[Arbitrated],
    sale.[AdjustmentReason],
    sale.[AdjustedByUserName],
    sale.[AdjustmentDate],
    sale.[CARRIERNAME],
    sale.[HoldWire],
    sale.[CREATED] AS [Created_Sale],
    sale.[UPDATEEVENTID] AS [UpdateEventID_Sale]
FROM [stg].[Auct_BlockSale_FinalView] blocksale
-- FOR Sale Info.
LEFT JOIN [stg].[Auct_Sale_FinalView] sale 
    ON blocksale.[BLOCKSALEID]=sale.[BLOCKSALEID]
        -- AND blocksale.[AUCTIONBIDDERID]<>sale.[AuctionBidderId] -- Why?, 1470 cases
LEFT JOIN [stg].[Auct_SaleStatus_FinalView] salestatus 
    ON blocksale.[SALESTATUSID]=salestatus.[SALESTATUSID]
LEFT JOIN [stg].[Auct_SaleStatus_FinalView] salestatus2 
    ON sale.[SaleStatusId]=salestatus2.[SALESTATUSID]
    ');

  CREATE TABLE "dbo"."Auct_AuctionSale_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionSale_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionSale_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionSale_FT__dbt_tmp_temp_view"
    end


