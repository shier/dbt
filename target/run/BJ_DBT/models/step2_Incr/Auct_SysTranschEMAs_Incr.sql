
      
  
  if object_id ('"stg"."Auct_SysTranschEMAs_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysTranschEMAs_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysTranschEMAs_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysTranschEMAs_Incr"
    end


   EXEC('create view stg.Auct_SysTranschEMAs_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([TaBID] as varchar), Cast([Startlsn] as varchar), Cast([Endlsn] as varchar), Cast([TypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysTranschEMAs_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysTranschEMAs_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysTranschEMAs_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysTranschEMAs_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysTranschEMAs_Incr_temp_view"
    end



  