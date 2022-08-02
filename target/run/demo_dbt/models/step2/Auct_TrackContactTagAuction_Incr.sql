
      
  
  if object_id ('"stg"."Auct_TrackContactTagAuction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TrackContactTagAuction_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TrackContactTagAuction_Incr"','U') is not null
    begin
    drop table "stg"."Auct_TrackContactTagAuction_Incr"
    end


   EXEC('create view stg.Auct_TrackContactTagAuction_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([TagID], Cast([ContactID] as varchar), Cast([PulseEventID] as varchar), Cast([CredentialTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TrackContactTagAuction_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_TrackContactTagAuction_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TrackContactTagAuction_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_TrackContactTagAuction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TrackContactTagAuction_Incr_temp_view"
    end



  