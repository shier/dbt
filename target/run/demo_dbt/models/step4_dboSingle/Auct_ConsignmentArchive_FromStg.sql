
  
  if object_id ('"dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentArchive_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentArchiveID] as int) [ConsignmentArchiveID],
	cast([IsOutTakeVehicle] as bit) [IsOutTakeVehicle],
	cast([ReleasedForTransPort] as bit) [ReleasedForTransport],
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([ReserveAmount] as numeric(19,4)) [ReserveAmount],
	cast([CusTestimatedValue] as numeric(19,4)) [CustestimatedValue],
	cast([BJValue] as numeric(19,4)) [BjValue],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([ItemID] as int) [ItemID],
	cast([ConsignmentStatusID] as int) [ConsignmentStatusID],
	cast([AuctionID] as int) [AuctionID],
	cast([ReserveTypeID] as nvarchar(4000)) [ReserveTypeID],
	cast([ShortDescription] as nvarchar(4000)) [ShortDescription],
	cast([LongDescription] as nvarchar(4000)) [LongDescription],
	cast([PhotosReceived] as nvarchar(4000)) [PhotosReceived],
	cast([Showcase] as nvarchar(4000)) [Showcase],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CarCard] as nvarchar(4000)) [Carcard],
	cast([Titlein] as nvarchar(4000)) [Titlein],
	cast([OnSite] as nvarchar(4000)) [Onsite],
	cast([CheckedIn] as nvarchar(4000)) [Checkedin],
	cast([Completed] as nvarchar(4000)) [Completed],
	cast([Canceled] as nvarchar(4000)) [Canceled],
	cast([AddressID] as int) [AddressID],
	cast([CarInfoID] as int) [CarInfoID],
	cast([OnSpeed] as nvarchar(4000)) [OnSpeed],
	cast([OnHagerty] as nvarchar(4000)) [OnHagerty],
	cast([IsCharity] as int) [IsCharity],
	cast([CreatedUTC] as datetime) [CreatedUTC],
	cast([ModifiedUTC] as datetime) [ModifiedUTC],
	cast([EmainventoryID] as nvarchar(4000)) [EmainventoryID],
	cast([EMAEventID] as nvarchar(4000)) [EmaEventID],
	cast([EMACCEventID] as nvarchar(4000)) [EmaccEventID],
	cast([EmashowEventID] as nvarchar(4000)) [EmashowEventID],
	cast([EmamercEventID] as nvarchar(4000)) [EmamercEventID],
	cast([EmalotID] as nvarchar(4000)) [EmalotID],
	cast([MarketingDescription] as nvarchar(4000)) [MarketingDescription],
	cast([AuthorizedWeb] as int) [AuthorizedWeb],
	cast([AuthorizedSocial] as int) [AuthorizedSocial],
	cast([AuthorizedMarketing] as int) [AuthorizedMarketing],
	cast([AuthorizedCarList] as int) [AuthorizedCarList],
	cast([LockMarketingDescription] as int) [LockMarketingDescription],
	cast([ReviewStateID] as int) [ReviewStateID],
	cast([DisplayStatusID] as int) [DisplayStatusID],
	cast([AssignedtoUserID] as int) [AssignedToUserID],
	cast([Priority] as int) [Priority],
	cast([Quality] as int) [Quality],
	cast([RequestedAuctionID] as int) [RequestedAuctionID],
	cast([StockNumber] as nvarchar(4000)) [StockNumber],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([ModifiedByUserID] as int) [ModifiedByUserID],
	cast([ModifiedDateTime] as datetime) [ModifiedDateTime],
	cast([ModifiedFields] as nvarchar(4000)) [ModifiedFields],
	cast([ConsignmentNotifyBit] as int) [ConsignmentNotifyBit] 
From stg.[Auct_ConsignmentArchive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentArchive_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentArchive_FromStg__dbt_tmp_temp_view"
    end

