
      
  
  if object_id ('"stg"."Auct_Mapper_Country_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mapper_Country_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Mapper_Country_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Mapper_Country_Incr"
    end


   EXEC('create view stg.Auct_Mapper_Country_Incr_temp_view as
    
With hashData as (
		Select
			*, HASHBYTES(''SHA2_256'', concat(Cast([MaptoID] as varchar), [Name])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Mapper_Country_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Mapper_Country_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Mapper_Country_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Mapper_Country_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mapper_Country_Incr_temp_view"
    end



  