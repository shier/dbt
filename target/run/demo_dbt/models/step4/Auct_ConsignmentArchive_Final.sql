
  
  if object_id ('"stg"."Auct_ConsignmentArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentArchive_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConsignmentArchive_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConsignmentArchive_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConsignmentArchive_Final__dbt_tmp_temp_view as
    
Select
	[ConsignmentArchiveID],[IsOutTakeVehicle],[ReleasedForTransPort],[ReserveAmount],[CusTestimatedValue],[BJValue],[LotNumber],[ReserveTypeID],[ShortDescription],[LongDescription],[EMACCEventID],[EmashowEventID],[EmamercEventID],[EmalotID],[MarketingDescription],[StockNumber],[Completed],[Canceled],[OnSpeed],[OnHagerty],[EmainventoryID],[EMAEventID],[PhotosReceived],[Showcase],[CarCard],[Titlein],[OnSite],[CheckedIn],[ModifiedFields],[Created],[CreatedUTC],[ModifiedUTC],[ModifiedDateTime],[ConsignmentID],[RequestedAuctionID],[CreatedByUserID],[ModifiedByUserID],[ConsignmentNotifyBit],[LockMarketingDescription],[ReviewStateID],[DisplayStatusID],[AssignedtoUserID],[Priority],[Quality],[CarInfoID],[IsCharity],[AuthorizedWeb],[AuthorizedSocial],[AuthorizedMarketing],[AuthorizedCarList],[CustomerAccountID],[ItemID],[ConsignmentStatusID],[AuctionID],[UpdateEventID],[AddressID] 
From stg.[Auct_ConsignmentArchive_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_ConsignmentArchive_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConsignmentArchive_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConsignmentArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentArchive_Final__dbt_tmp_temp_view"
    end


