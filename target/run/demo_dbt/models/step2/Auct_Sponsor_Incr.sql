
      
  
  if object_id ('"stg"."Auct_Sponsor_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sponsor_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Sponsor_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Sponsor_Incr"
    end


   EXEC('create view stg.Auct_Sponsor_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CustomerAccountID as varchar), Cast(SponsorStatusID as varchar), Cast(SponsorLeadID as varchar), Cast(UpdateEventID as varchar), Cast(AddressID as varchar), Cast(TermStart as varchar), Cast(TermEnd as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Sponsor_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Sponsor_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Sponsor_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Sponsor_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sponsor_Incr_temp_view"
    end



  