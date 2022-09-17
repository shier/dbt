{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ItemID] as int) [ITEMID],
	cast([ConsignmentStatusID] as int) [CONSIGNMENTSTATUSID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ReserveTypeID] as char(1)) [RESERVETYPEID],
	cast([ShortDescription] as nvarchar(4000)) [SHORTDESCRIPTION],
	cast([LongDescription] as nvarchar(4000)) [LONGDESCRIPTION],
	cast([PhotosReceived] as char(1)) [PHOTOSRECEIVED],
	cast([Showcase] as char(1)) [SHOWCASE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([CarCard] as varchar(4000)) [CARCARD],
	cast([Titlein] as char(1)) [TITLEIN],
	cast([OnSite] as char(1)) [ONSITE],
	cast([CheckedIn] as char(1)) [CHECKEDIN],
	cast([Completed] as char(1)) [COMPLETED],
	cast([Canceled] as char(1)) [CANCELED],
	cast([AddressID] as int) [ADDRESSID],
	cast([CarInfoID] as int) [CARINFOID],
	cast([OnSpeed] as char(1)) [ONSPEED],
	cast([OnHagerty] as char(1)) [ONHAGERTY],
	cast([IsCharity] as int) [ISCHARITY],
	cast([CreatedUTC] as datetime) [CREATEDUTC],
	cast([ModifiedUTC] as datetime) [MODIFIEDUTC],
	cast([EmainventoryID] as varchar(38)) [EMAINVENTORYID],
	cast([EMAEventID] as varchar(38)) [EMAEVENTID],
	cast([EMACCEventID] as varchar(38)) [EMACCEVENTID],
	cast([EmashowEventID] as varchar(38)) [EMASHOWEVENTID],
	cast([EmamercEventID] as varchar(38)) [EMAMERCEVENTID],
	cast([EmalotID] as varchar(38)) [EMALOTID],
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
	cast([StockNumber] as nvarchar(512)) [STOCKNUMBER],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([ModifiedByUserID] as int) [MODIFIEDBYUSERID],
	cast([ModifiedDateTime] as datetime) [MODIFIEDDATETIME],
	cast([ModifiedFields] as nvarchar(4000)) [MODIFIEDFIELDS],
	cast([ConsignmentCompleteStatusBit] as int) [CONSIGNMENTCOMPLETESTATUSBIT],
	cast([ModifiedDetailsUTC] as datetime) [MODIFIEDDETAILSUTC],
	cast([ModifiedDocketUTC] as datetime) [MODIFIEDDOCKETUTC],
	cast([PaymentStatusBit] as int) [PAYMENTSTATUSBIT],
	cast([OnlineauctonItemID] as int) [ONLINEAUCTONITEMID],
	cast([OnlineAuctionauctionItemID] as int) [ONLINEAUCTIONAUCTIONITEMID],
	cast([ConsignmentNotifyBit] as int) [CONSIGNMENTNOTIFYBIT],
	cast([ReserveAmount] as money) [RESERVEAMOUNT],
	cast([CusTestimatedValue] as money) [CUSTESTIMATEDVALUE],
	cast([BJValue] as money) [BJVALUE],
	cast([LotNumber] as numeric(18,2)) [LOTNUMBER],
	cast([IsOutTakeVehicle] as bit) [ISOUTTAKEVEHICLE],
	cast([PaymentStatus] as bit) [PAYMENTSTATUS],
	cast([ReleasedForTransPort] as bit) [RELEASEDFORTRANSPORT] 
From stg.[Auct_Consignment_FinalView]