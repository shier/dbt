
SELECT 
    HASHBYTES('SHA2_256', 
        CONCAT(
            COALESCE(CAST(blocksale.[BLOCKSALEID] AS VARCHAR(20)), ''), '|', 
            COALESCE(CAST(sale.[SALEID] AS VARCHAR(20)), '')
        )
    ) AS [temp_BlockSaleID_SaleID],
	blocksale.[BLOCKSALEID] AS [BlockSaleID],
	blocksale.[AUCTIONBIDDERID] AS [BlockSaleAuctionBidderID],
	sale.[AuctionBidderId] AS [SaleAuctionBidderID],
	blocksale.[DOCKETID] AS [DocketID],
	blocksale.[AUCTIONEERID] AS [AuctioneerID],
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
	NULLIF(blocksale.[COMMENTS], '') AS [BlockSaleComments],
	NULLIF(sale.[COMMENTS], '') AS [SaleComments],
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
	NULLIF(blocksale.[TAXEXEMPTCODE], '') AS [BlockSaleTaxExemptCode],
	NULLIF(sale.[TaxExemptCode], '') AS [SaleTaxExemptCode],
	blocksale.[CREATED] AS [BlockSaleCreated],
	blocksale.[UPDATEEVENTID] AS [BlockSaleUpdateEventID],
	sale.[SALEID] AS [SaleID],
	sale.[SHIPDATEVERIFIED] AS [ShipDateVerified],
	sale.[CARRIERID] AS [CarrierID],
	sale.[BUYERCUSTOMERACCOUNTID] AS [BuyerCustomerAccountID],
	sale.[SELLERCUSTOMERACCOUNTID] AS [SellerCustomerAccountID],
	sale.[SHIPTOADDRESSID] AS [ShipToAddressID],
	sale.[SHIPTOCONTACTID] AS [ShipToContactID],
	NULLIF(sale.[BILLOFLADING], '') AS [BillOfLading],
	sale.[BILLOFLADINGTEXT] AS [BillOfLadingText],
	sale.[BMA],
	sale.[LEGACY] AS [Legacy],
	sale.[SHIPDATE] AS [ShipDate],
	sale.[NAVISION],
	sale.[BUYERDEALERID] AS [BuyerDealerID],
	sale.[SELLERADDRESSID] AS [SellerAddressID],
	sale.[SELLERDEALERID] AS [SellerDealerID],
	sale.[AlternateSaleType],
	sale.[SteveCommDollars],
	sale.[SteveCommPerc] AS [SteveCommPct],
	sale.[AssiterCommDollars],
	sale.[AssiterCommPerc] AS [AssiterCommPct],
	sale.[Arbitrated],
	sale.[AdjustmentReason],
	sale.[AdjustedByUserName],
	sale.[AdjustmentDate],
	sale.[CARRIERNAME] AS [CarrierName],
	sale.[HoldWire],
	sale.[CREATED] AS [SaleCreated],
	sale.[UPDATEEVENTID] AS [SaleUpdateEventID]
FROM [stg].[Auct_BlockSale_FinalView] blocksale
-- FOR Sale Info.
LEFT JOIN [stg].[Auct_Sale_FinalView] sale 
    ON blocksale.[BLOCKSALEID]=sale.[BLOCKSALEID]
        -- AND blocksale.[AUCTIONBIDDERID]<>sale.[AuctionBidderId] -- Why?, 1470 cases
LEFT JOIN [stg].[Auct_SaleStatus_FinalView] salestatus 
    ON blocksale.[SALESTATUSID]=salestatus.[SALESTATUSID]
LEFT JOIN [stg].[Auct_SaleStatus_FinalView] salestatus2 
    ON sale.[SaleStatusId]=salestatus2.[SALESTATUSID]