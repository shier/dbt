
  
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
	[ConsignmentID],[AuthorizedWeb],[AuthorizedSocial],[AuthorizedMarketing],[AuthorizedCarList],[LockMarketingDescription],[UpdateEventID],[AddressID],[CarInfoID],[IsCharity],[ConsignmentNotifyBit],[CustomerAccountID],[ItemID],[ConsignmentStatusID],[AuctionID],[CreatedByUserID],[ModifiedByUserID],[ConsignmentCompleteStatusBit],[PaymentStatusBit],[OnlineauctonItemID],[OnlineAuctionauctionItemID],[ReviewStateID],[DisplayStatusID],[AssignedtoUserID],[Priority],[Quality],[RequestedAuctionID],[ModifiedDateTime],[ModifiedDetailsUTC],[ModifiedDocketUTC],[Created],[CreatedUTC],[ModifiedUTC],[LotNumber],[ReserveAmount],[CusTestimatedValue],[BJValue],[EMACCEventID],[EmashowEventID],[EmamercEventID],[EmalotID],[Completed],[Canceled],[OnSpeed],[OnHagerty],[EmainventoryID],[EMAEventID],[PhotosReceived],[Showcase],[CarCard],[Titlein],[OnSite],[CheckedIn],[MarketingDescription],[StockNumber],[ModifiedFields],[ReserveTypeID],[ShortDescription],[LongDescription],[IsOutTakeVehicle],[PaymentStatus],[ReleasedForTransPort] 
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


