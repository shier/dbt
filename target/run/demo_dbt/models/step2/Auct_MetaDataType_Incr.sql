
      
  
  if object_id ('"stg"."Auct_MetaDataType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MetaDataType_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MetaDataType_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MetaDataType_Incr"
    end


   EXEC('create view stg.Auct_MetaDataType_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Active as varchar), Name, TableName, ColumnName, DisplayColumn)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MetaDataType_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MetaDataType_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MetaDataType_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MetaDataType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MetaDataType_Incr_temp_view"
    end



  