
  
  if object_id ('"stg"."Auct_Consignment_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Consignment_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Consignment_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.Auct_Consignment_FT_tmp__dbt_tmp_temp_view as
    
WITH Auct_Consignment_temp_CTE AS (
    SELECT 
        HASHBYTES(''SHA2_256'', 
            CONCAT(
                COALESCE(CAST(consgt.[CONSIGNMENTID] AS VARCHAR(20)), ''''), ''|'', 
                COALESCE(CAST(consgt.[DOCKETID] AS VARCHAR(20)), '''')
            )
        ) AS [temp_ConsignmentID_DocketID],
        cxconsgt.[Consignor_Skey],
        auc.[Auction_Skey],
        COALESCE(car.[Item_Skey], automobilia.[Item_Skey]) AS [Item_Skey],
        consgt.[ConsignmentID],
        consgt.[AuctionID],
        consgt.[ItemID],
        consgt.[CustomerAccountID],
        consgt.[AddressID],
        consgt.[DocketID],
        consgt.[ConsignmentStatusID],
        consgt.[LotNumber],
        consgt.[ReserveTypeID],
        consgt.[ReserveAmount],
        consgt.[ShortDescription],
        consgt.[LongDescription],
        consgt.[PhotosReceived],
        consgt.[Showcase],
        consgt.[ConsignmentCreated],
        consgt.[ConsignmentUpdateEventID],
        consgt.[CarCard],
        consgt.[TitleIn],
        consgt.[OnSite],
        consgt.[CheckedIn],
        consgt.[Completed],
        consgt.[Canceled],
        consgt.[CarInfoID],
        consgt.[OnSpeed],
        consgt.[OnHagerty],
        consgt.[CustomerEstimatedValue],
        consgt.[IsCharity],
        consgt.[BJValue],
        consgt.[ConsignmentCreatedUTC],
        consgt.[ConsignmentModifiedUTC],
        consgt.[EMAInventoryID],
        consgt.[EMAEventID],
        consgt.[EMACCEventID],
        consgt.[EMAShowEventID],
        consgt.[EMAMERCEventID],
        consgt.[EMALotID],
        consgt.[MarketingDescription],
        consgt.[AuthorizedWeb],
        consgt.[AuthorizedSocial],
        consgt.[AuthorizedMarketing],
        consgt.[AuthorizedCarList],
        consgt.[HasLockMarketingDescription],
        consgt.[ReviewStateID],
        consgt.[DisplayStatusID],
        consgt.[AssignedToUserID],
        consgt.[Priority],
        consgt.[Quality],
        consgt.[RequestedAuctionID],
        consgt.[StockNumber],
        consgt.[IsOutTakeVehicle],
        consgt.[CreatedByUserID],
        consgt.[ModifiedByUserID],
        consgt.[ModifiedDate],
        consgt.[ModifiedFields],
        consgt.[ConsignmentCompleteStatusBIT],
        consgt.[ModifiedDetailsUTC],
        consgt.[ModifiedDocketUTC],
        consgt.[PaymentStatus],
        consgt.[PaymentStatusBIT],
        consgt.[OnlineAuctionItemID],
        consgt.[OnlineAuctionAuctionItemID],
        consgt.[IsReleasedForTransport],
        consgt.[ConsignmentNotifyBIT],
        consgt.[HasValidDocketIDAndLotNumber],
        consgt.[LotStatus],
        consgt.[TargetTime],
        consgt.[ActualTime],
        consgt.[DocketCreated],
        consgt.[DocketUpdateEventID],
        consgt.[LaneNumber]
    FROM [stg].[Auct_Consignment_FT_stg] consgt
    -- FOR [Auction_Skey]
    LEFT JOIN [dbo].[Auct_Auction_DM] auc 
        ON consgt.[AuctionID]=auc.[AuctionID]
    -- FOR [Item_Skey]
    LEFT JOIN [dbo].[Auct_Car_DM] car 
        ON consgt.[ItemID]=car.[ItemID]
    LEFT JOIN [dbo].[Auct_Automobilia_DM] automobilia
        ON consgt.[ItemID]=automobilia.[ItemID]
    -- FOR [Consignor_Skey]
    LEFT JOIN [dbo].[Auct_Customer_Consignor_DM] cxconsgt
        ON consgt.[ConsignmentID]=cxconsgt.[ConsignmentID]
)
SELECT 
    [temp_ConsignmentID_DocketID],
    [Consignor_Skey],
    [Auction_Skey],
    [Item_Skey],
    [ConsignmentID],
    [AuctionID],
    [ItemID],
    [CustomerAccountID],
    [AddressID],
    [DocketID],
    [ConsignmentStatusID],
    [LotNumber],
    [ReserveTypeID],
    [ReserveAmount],
    [ShortDescription],
    [LongDescription],
    [PhotosReceived],
    [Showcase],
    [ConsignmentCreated],
    [ConsignmentUpdateEventID],
    [CarCard],
    [TitleIn],
    [OnSite],
    [CheckedIn],
    [Completed],
    [Canceled],
    [CarInfoID],
    [OnSpeed],
    [OnHagerty],
    [CustomerEstimatedValue],
    [IsCharity],
    [BJValue],
    [ConsignmentCreatedUTC],
    [ConsignmentModifiedUTC],
    [EMAInventoryID],
    [EMAEventID],
    [EMACCEventID],
    [EMAShowEventID],
    [EMAMERCEventID],
    [EMALotID],
    [MarketingDescription],
    [AuthorizedWeb],
    [AuthorizedSocial],
    [AuthorizedMarketing],
    [AuthorizedCarList],
    [HasLockMarketingDescription],
    [ReviewStateID],
    [DisplayStatusID],
    [AssignedToUserID],
    [Priority],
    [Quality],
    [RequestedAuctionID],
    [StockNumber],
    [IsOutTakeVehicle],
    [CreatedByUserID],
    [ModifiedByUserID],
    [ModifiedDate],
    [ModifiedFields],
    [ConsignmentCompleteStatusBIT],
    [ModifiedDetailsUTC],
    [ModifiedDocketUTC],
    [PaymentStatus],
    [PaymentStatusBIT],
    [OnlineAuctionItemID],
    [OnlineAuctionAuctionItemID],
    [IsReleasedForTransport],
    [ConsignmentNotifyBIT],
    [HasValidDocketIDAndLotNumber],
    [LotStatus],
    [TargetTime],
    [ActualTime],
    [DocketCreated],
    [DocketUpdateEventID],
    [LaneNumber]
FROM Auct_Consignment_temp_CTE
    ');

  CREATE TABLE "stg"."Auct_Consignment_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Consignment_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Consignment_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_FT_tmp__dbt_tmp_temp_view"
    end


