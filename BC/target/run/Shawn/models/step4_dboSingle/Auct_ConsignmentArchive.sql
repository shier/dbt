
  
  if object_id ('"dbo"."Auct_ConsignmentArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentArchive__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentArchive__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentArchive__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentArchive__dbt_tmp_temp_view as
    
Select
	cast([IsOutTakeVehicle] as bit) [ISOUTTAKEVEHICLE],
	cast([ReleasedForTransPort] as bit) [RELEASEDFORTRANSPORT],
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([ReserveAmount] as numeric(19,4)) [RESERVEAMOUNT],
	cast([CusTestimatedValue] as numeric(19,4)) [CUSTESTIMATEDVALUE],
	cast([BJValue] as numeric(19,4)) [BJVALUE],
	cast([ConsignmentArchiveID] as int) [CONSIGNMENTARCHIVEID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ItemID] as int) [ITEMID],
	cast([ConsignmentStatusID] as int) [CONSIGNMENTSTATUSID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ReserveTypeID] as nvarchar(4000)) [RESERVETYPEID],
	cast([ShortDescription] as nvarchar(4000)) [SHORTDESCRIPTION],
	cast([LongDescription] as nvarchar(4000)) [LONGDESCRIPTION],
	cast([PhotosReceived] as nvarchar(4000)) [PHOTOSRECEIVED],
	cast([Showcase] as nvarchar(4000)) [SHOWCASE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CarCard] as nvarchar(4000)) [CARCARD],
	cast([Titlein] as nvarchar(4000)) [TITLEIN],
	cast([OnSite] as nvarchar(4000)) [ONSITE],
	cast([CheckedIn] as nvarchar(4000)) [CHECKEDIN],
	cast([Completed] as nvarchar(4000)) [COMPLETED],
	cast([Canceled] as nvarchar(4000)) [CANCELED],
	cast([AddressID] as int) [ADDRESSID],
	cast([CarInfoID] as int) [CARINFOID],
	cast([OnSpeed] as nvarchar(4000)) [ONSPEED],
	cast([OnHagerty] as nvarchar(4000)) [ONHAGERTY],
	cast([IsCharity] as int) [ISCHARITY],
	cast([CreatedUTC] as datetime) [CREATEDUTC],
	cast([ModifiedUTC] as datetime) [MODIFIEDUTC],
	cast([EmainventoryID] as nvarchar(4000)) [EMAINVENTORYID],
	cast([EMAEventID] as nvarchar(4000)) [EMAEVENTID],
	cast([EMACCEventID] as nvarchar(4000)) [EMACCEVENTID],
	cast([EmashowEventID] as nvarchar(4000)) [EMASHOWEVENTID],
	cast([EmamercEventID] as nvarchar(4000)) [EMAMERCEVENTID],
	cast([EmalotID] as nvarchar(4000)) [EMALOTID],
	cast([MarketingDescription] as nvarchar(4000)) [MARKETINGDESCRIPTION],
	cast([AuthorizedWeb] as int) [AUTHORIZEDWEB],
	cast([AuthorizedSocial] as int) [AUTHORIZEDSOCIAL],
	cast([AuthorizedMarketing] as int) [AUTHORIZEDMARKETING],
	cast([AuthorizedCarList] as int) [AUTHORIZEDCARLIST],
	cast([LockMarketingDescription] as int) [LOCKMARKETINGDESCRIPTION],
	cast([ReviewStateID] as int) [REVIEWSTATEID],
	cast([DisplayStatusID] as int) [DISPLAYSTATUSID],
	cast([AssignedtoUserID] as int) [ASSIGNEDTOUSERID],
	cast([Priority] as int) [PRIORITY],
	cast([Quality] as int) [QUALITY],
	cast([RequestedAuctionID] as int) [REQUESTEDAUCTIONID],
	cast([StockNumber] as nvarchar(4000)) [STOCKNUMBER],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([ModifiedByUserID] as int) [MODIFIEDBYUSERID],
	cast([ModifiedDateTime] as datetime) [MODIFIEDDATETIME],
	cast([ModifiedFields] as nvarchar(4000)) [MODIFIEDFIELDS],
	cast([ConsignmentNotifyBit] as int) [CONSIGNMENTNOTIFYBIT] 
From stg.[Auct_ConsignmentArchive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentArchive__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentArchive__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentArchive__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentArchive__dbt_tmp_temp_view"
    end


