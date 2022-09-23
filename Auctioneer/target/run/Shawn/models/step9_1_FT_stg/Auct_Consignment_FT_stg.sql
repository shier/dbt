
  
  if object_id ('"stg"."Auct_Consignment_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Consignment_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Consignment_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.Auct_Consignment_FT_stg__dbt_tmp_temp_view as
    
SELECT
   HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST(consgt.[CONSIGNMENTID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST(docket.[DOCKETID] AS VARCHAR(20)), '''')
        )
    ) AS [temp_ConsignmentID_DocketID],
    consgt.[CONSIGNMENTID] as [ConsignmentID],
    consgt.[AUCTIONID] as [AuctionID],
    consgt.[ITEMID] as [ItemID],
    consgt.[CUSTOMERACCOUNTID] as [CustomerAccountID],
    consgt.[ADDRESSID] as [AddressID],
    consgt.[CONSIGNMENTSTATUSID] as [ConsignmentStatusID],
    consgt.[LOTNUMBER] as [LotNumber],
    consgt.[RESERVETYPEID] as [ReserveTypeID],
    consgt.[RESERVEAMOUNT] as [ReserveAmount],
    consgt.[SHORTDESCRIPTION] as [ShortDescription],
    consgt.[LONGDESCRIPTION] as [LongDescription],
    consgt.[PHOTOSRECEIVED] as [PhotosReceived],
    consgt.[SHOWCASE] as [Showcase],
    consgt.[CREATED]  as [ConsignmentCreated],
    consgt.[UPDATEEVENTID]  as [ConsignmentUpdateEventID],
    consgt.[CARCARD] as [CarCard],
    consgt.[TITLEIN] as [TitleIn],
    consgt.[ONSITE] as [OnSite],
    NULLIF(consgt.[CHECKEDIN], '''')  as [CheckedIn],
    consgt.[COMPLETED] as [Completed],
    consgt.[CANCELED] as [Canceled],
    consgt.[CARINFOID] as [CarInfoID],
    consgt.[ONSPEED] as [OnSpeed],
    consgt.[ONHAGERTY] as [OnHagerty],
    consgt.[CUSTESTIMATEDVALUE] as [CustomerEstimatedValue],
    consgt.[ISCHARITY] as [IsCharity],
    consgt.[BJVALUE] as [BJValue],
    consgt.[CREATEDUTC] as [ConsignmentCreatedUTC],
    consgt.[MODIFIEDUTC] as [ConsignmentModifiedUTC],
    consgt.[EMAINVENTORYID] as [EMAInventoryID],
    consgt.[EMAEVENTID] as [EMAEventID],
    consgt.[EMACCEVENTID] as [EMACCEventID],
    consgt.[EMASHOWEVENTID] as [EMAShowEventID],
    consgt.[EMAMERCEVENTID] as [EMAMERCEventID],
    consgt.[EMALOTID] as [EMALotID],
    consgt.[MARKETINGDESCRIPTION] as [MarketingDescription],
    consgt.[AUTHORIZEDWEB] as [AuthorizedWeb],
    consgt.[AUTHORIZEDSOCIAL] as [AuthorizedSocial],
    consgt.[AUTHORIZEDMARKETING] as [AuthorizedMarketing],
    consgt.[AUTHORIZEDCARLIST] as [AuthorizedCarList],
    consgt.[LOCKMARKETINGDESCRIPTION] as [HasLockMarketingDescription],
    consgt.[REVIEWSTATEID] as [ReviewStateID],
    consgt.[DISPLAYSTATUSID] as [DisplayStatusID],
    consgt.[ASSIGNEDTOUSERID] as [AssignedToUserID],
    consgt.[PRIORITY] as [Priority],
    consgt.[QUALITY] as [Quality],
    consgt.[REQUESTEDAUCTIONID] as [RequestedAuctionID],
    consgt.[STOCKNUMBER] as [StockNumber],
    consgt.[ISOUTTAKEVEHICLE] as [IsOutTakeVehicle],
    consgt.[CREATEDBYUSERID] as [CreatedByUserID],
    consgt.[MODIFIEDBYUSERID] as [ModifiedByUserID],
    consgt.[MODIFIEDDATETIME] as [ModifiedDate],
    NULLIF(consgt.[MODIFIEDFIELDS], '''')  as [ModifiedFields],
    consgt.[CONSIGNMENTCOMPLETESTATUSBIT] as [ConsignmentCompleteStatusBIT],
    consgt.[MODIFIEDDETAILSUTC] as [ModifiedDetailsUTC],
    consgt.[MODIFIEDDOCKETUTC] as [ModifiedDocketUTC],
    consgt.[PAYMENTSTATUS] as [PaymentStatus],
    consgt.[PAYMENTSTATUSBIT] as [PaymentStatusBIT],
    consgt.[ONLINEAUCTONITEMID] as [OnlineAuctionItemID],
    consgt.[ONLINEAUCTIONAUCTIONITEMID] as [OnlineAuctionAuctionItemID],
    consgt.[RELEASEDFORTRANSPORT] as [IsReleasedForTransport],
    consgt.[CONSIGNMENTNOTIFYBIT] as [ConsignmentNotifyBIT],
    docket.[DOCKETID] as [DocketID],
    CASE WHEN docket.[DOCKETID] IS NOT NULL AND consgt.[LOTNUMBER]>0
        THEN ''1''
    ELSE ''0''
    END AS [HasValidDocketIDAndLotNumber],
    -- docket.[CONSIGNMENTID],
    docket.[LOTSTATUS] as [LotStatus],
    docket.[TARGETTIME] as [TargetTime],
    docket.[ACTUALTIME] as [ActualTime],
    docket.[CREATED]  as [DocketCreated],
    docket.[UPDATEEVENTID] as [DocketUpdateEventID],
    docket.[LANENUMBER] as [LaneNumber]
FROM [stg].[Auct_Consignment_FinalView] consgt
LEFT JOIN [stg].[Auct_Docket_FinalView] docket
    ON consgt.[CONSIGNMENTID]=docket.[CONSIGNMENTID]
    ');

  CREATE TABLE "stg"."Auct_Consignment_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Consignment_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Consignment_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_FT_stg__dbt_tmp_temp_view"
    end


