
      
  
  if object_id ('"stg"."Auct_ContentMetaData_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContentMetaData_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ContentMetaData_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ContentMetaData_Incr"
    end


   EXEC('create view stg.Auct_ContentMetaData_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([ContentID] as varchar), Cast([MetaDataID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContentMetaData_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ContentMetaData_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ContentMetaData_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ContentMetaData_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContentMetaData_Incr_temp_view"
    end



  