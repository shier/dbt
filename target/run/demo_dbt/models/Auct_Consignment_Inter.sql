
  
  if object_id ('"stg"."Auct_Consignment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Consignment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Consignment_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Consignment_Inter__dbt_tmp_temp_view as
    
Select
	AUTHORIZEDWEB AuthorizedWeb,
	AUTHORIZEDSOCIAL AuthorizedSocial,
	AUTHORIZEDMARKETING AuthorizedMarketing,
	AUTHORIZEDCARLIST AuthorizedCarList,
	LOCKMARKETINGDESCRIPTION LockMarketingDescription,
	UPDATEEVENTID UpdateEventID,
	ADDRESSID AddressID,
	CARINFOID CarInfoID,
	ISCHARITY IsCharity,
	CONSIGNMENTNOTIFYBIT ConsignmentNotifyBit,
	CONSIGNMENTID ConsignmentID,
	CUSTOMERACCOUNTID CustomerAccountID,
	ITEMID ItemID,
	CONSIGNMENTSTATUSID ConsignmentStatusID,
	AUCTIONID AuctionID,
	CREATEDBYUSERID CreatedByUserID,
	MODIFIEDBYUSERID ModifiedByUserID,
	CONSIGNMENTCOMPLETESTATUSBIT ConsignmentCompleteStatusBit,
	PAYMENTSTATUSBIT PaymentStatusBit,
	ONLINEAUCTONITEMID OnlineauctonItemID,
	ONLINEAUCTIONAUCTIONITEMID OnlineAuctionauctionItemID,
	REVIEWSTATEID ReviewStateID,
	DISPLAYSTATUSID DisplayStatusID,
	ASSIGNEDTOUSERID AssignedtoUserID,
	PRIORITY Priority,
	QUALITY Quality,
	REQUESTEDAUCTIONID RequestedAuctionID,
	MODIFIEDDATETIME ModifiedDateTime,
	MODIFIEDDETAILSUTC ModifiedDetailsUTC,
	MODIFIEDDOCKETUTC ModifiedDocketUTC,
	CREATED Created,
	CREATEDUTC CreatedUTC,
	MODIFIEDUTC ModifiedUTC,
	LOTNUMBER LotNumber,
	RESERVEAMOUNT ReserveAmount,
	CUSTESTIMATEDVALUE CusTestimatedValue,
	BJVALUE BJValue,
	cast(EMACCEVENTID as nvarchar(4000)) EMACCEventID,
	cast(EMASHOWEVENTID as nvarchar(4000)) EmashowEventID,
	cast(EMAMERCEVENTID as nvarchar(4000)) EmamercEventID,
	cast(EMALOTID as nvarchar(4000)) EmalotID,
	cast(COMPLETED as nvarchar(4000)) Completed,
	cast(CANCELED as nvarchar(4000)) Canceled,
	cast(ONSPEED as nvarchar(4000)) OnSpeed,
	cast(ONHAGERTY as nvarchar(4000)) OnHagerty,
	cast(EMAINVENTORYID as nvarchar(4000)) EmainventoryID,
	cast(EMAEVENTID as nvarchar(4000)) EMAEventID,
	cast(PHOTOSRECEIVED as nvarchar(4000)) PhotosReceived,
	cast(SHOWCASE as nvarchar(4000)) Showcase,
	cast(CARCARD as nvarchar(4000)) CarCard,
	cast(TITLEIN as nvarchar(4000)) Titlein,
	cast(ONSITE as nvarchar(4000)) OnSite,
	cast(CHECKEDIN as nvarchar(4000)) CheckedIn,
	cast(MARKETINGDESCRIPTION as nvarchar(4000)) MarketingDescription,
	cast(STOCKNUMBER as nvarchar(4000)) StockNumber,
	cast(MODIFIEDFIELDS as nvarchar(4000)) ModifiedFields,
	cast(RESERVETYPEID as nvarchar(4000)) ReserveTypeID,
	cast(SHORTDESCRIPTION as nvarchar(4000)) ShortDescription,
	cast(LONGDESCRIPTION as nvarchar(4000)) LongDescription,
	ISOUTTAKEVEHICLE IsOutTakeVehicle,
	PAYMENTSTATUS PaymentStatus,
	RELEASEDFORTRANSPORT ReleasedForTransPort
From Auct_Consignment_Raw
    ');

  CREATE TABLE "stg"."Auct_Consignment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Consignment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Consignment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_Inter__dbt_tmp_temp_view"
    end


