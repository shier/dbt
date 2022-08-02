
  
  if object_id ('"stg"."Auct_Consignment_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Consignment_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Consignment_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Consignment_Final__dbt_tmp_temp_view as
    
Select
	[ConsignmentID],[CustomerAccountID],[ItemID],[ConsignmentStatusID],[AuctionID],[ReserveTypeID],[ShortDescription],[LongDescription],[PhotosReceived],[Showcase],[Created],[UpdateEventID],[CarCard],[Titlein],[OnSite],[CheckedIn],[Completed],[Canceled],[AddressID],[CarInfoID],[OnSpeed],[OnHagerty],[IsCharity],[CreatedUTC],[ModifiedUTC],[EmainventoryID],[EMAEventID],[EMACCEventID],[EmashowEventID],[EmamercEventID],[EmalotID],[MarketingDescription],[AuthorizedWeb],[AuthorizedSocial],[AuthorizedMarketing],[AuthorizedCarList],[LockMarketingDescription],[ReviewStateID],[DisplayStatusID],[AssignedtoUserID],[Priority],[Quality],[RequestedAuctionID],[StockNumber],[CreatedByUserID],[ModifiedByUserID],[ModifiedDateTime],[ModifiedFields],[ConsignmentCompleteStatusBit],[ModifiedDetailsUTC],[ModifiedDocketUTC],[PaymentStatusBit],[OnlineauctonItemID],[OnlineAuctionauctionItemID],[ConsignmentNotifyBit],[ReserveAmount],[CusTestimatedValue],[BJValue],[LotNumber],[IsOutTakeVehicle],[PaymentStatus],[ReleasedForTransPort] 
From stg.[Auct_Consignment_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Consignment_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Consignment_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Consignment_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_Final__dbt_tmp_temp_view"
    end


