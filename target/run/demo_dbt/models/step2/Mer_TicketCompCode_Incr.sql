
      
  
  if object_id ('"stg"."Mer_TicketCompCode_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketCompCode_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketCompCode_Incr"','U') is not null
    begin
    drop table "stg"."Mer_TicketCompCode_Incr"
    end


   EXEC('create view stg.Mer_TicketCompCode_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Comp_Name, Comp_Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TicketCompCode_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_TicketCompCode_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketCompCode_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketCompCode_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketCompCode_Incr_temp_view"
    end



  