
      
  
  if object_id ('"stg"."Auct_Consignment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Consignment_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Consignment_Incr"
    end


   EXEC('create view stg.Auct_Consignment_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AuthorizedWeb as varchar), Cast(AuthorizedSocial as varchar), Cast(AuthorizedMarketing as varchar), Cast(AuthorizedCarList as varchar), Cast(LockMarketingDescription as varchar), Cast(UpdateEventID as varchar), Cast(AddressID as varchar), Cast(CarInfoID as varchar), Cast(IsCharity as varchar), Cast(ConsignmentNotifyBit as varchar), Cast(CustomerAccountID as varchar), Cast(ItemID as varchar), Cast(ConsignmentStatusID as varchar), Cast(AuctionID as varchar), Cast(CreatedByUserID as varchar), Cast(ModifiedByUserID as varchar), Cast(ConsignmentCompleteStatusBit as varchar), Cast(PaymentStatusBit as varchar), Cast(OnlineauctonItemID as varchar), Cast(OnlineAuctionauctionItemID as varchar), Cast(ReviewStateID as varchar), Cast(DisplayStatusID as varchar), Cast(AssignedtoUserID as varchar), Cast(Priority as varchar), Cast(Quality as varchar), Cast(RequestedAuctionID as varchar), Cast(ModifiedDateTime as varchar), Cast(ModifiedDetailsUTC as varchar), Cast(ModifiedDocketUTC as varchar), Cast(Created as varchar), Cast(CreatedUTC as varchar), Cast(ModifiedUTC as varchar), Cast(LotNumber as varchar), Cast(ReserveAmount as varchar), Cast(CusTestimatedValue as varchar), Cast(BJValue as varchar), EMACCEventID, EmashowEventID, EmamercEventID, EmalotID, Completed, Canceled, OnSpeed, OnHagerty, EmainventoryID, EMAEventID, PhotosReceived, Showcase, CarCard, Titlein, OnSite, CheckedIn, MarketingDescription, StockNumber, ModifiedFields, ReserveTypeID, ShortDescription, LongDescription, Cast(IsOutTakeVehicle as varchar), Cast(PaymentStatus as varchar), Cast(ReleasedForTransPort as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Consignment_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Consignment_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Consignment_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Consignment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Consignment_Incr_temp_view"
    end



  