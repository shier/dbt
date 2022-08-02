
      
  
  if object_id ('"stg"."Auct_StateProvince_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_StateProvince_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_StateProvince_Incr"','U') is not null
    begin
    drop table "stg"."Auct_StateProvince_Incr"
    end


   EXEC('create view stg.Auct_StateProvince_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([Abbreviation], [FullName], Cast([CountryID] as varchar), [Active])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_StateProvince_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_StateProvince_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_StateProvince_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_StateProvince_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_StateProvince_Incr_temp_view"
    end



  