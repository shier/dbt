
      
  
  if object_id ('"stg"."Auct_CustomerAccountTicket_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccountTicket_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CustomerAccountTicket_Incr"','U') is not null
    begin
    drop table "stg"."Auct_CustomerAccountTicket_Incr"
    end


   EXEC('create view stg.Auct_CustomerAccountTicket_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(TicketTypeID as varchar), Cast(CreatedByUserID as varchar), Cast(Quantity as varchar), Cast(Active as varchar), Cast(Created as varchar), TicketNumber, Comment)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CustomerAccountTicket_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_CustomerAccountTicket_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CustomerAccountTicket_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_CustomerAccountTicket_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccountTicket_Incr_temp_view"
    end



  