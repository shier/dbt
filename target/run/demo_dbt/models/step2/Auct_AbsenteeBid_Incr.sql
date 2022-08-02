
      
  
  if object_id ('"stg"."Auct_AbsenteeBid_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AbsenteeBid_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AbsenteeBid_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AbsenteeBid_Incr"
    end


   EXEC('create view stg.Auct_AbsenteeBid_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Contactphone1, Contactphone2, Note, Cast(AuctionBidderID as varchar), Cast(ConsignmentID as varchar), Cast(AuctionID as varchar), Cast(AbsenteeTypeIDBit as varchar), Cast(MaxBID as varchar), Cast(LotNumber as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AbsenteeBid_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AbsenteeBid_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AbsenteeBid_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AbsenteeBid_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AbsenteeBid_Incr_temp_view"
    end



  