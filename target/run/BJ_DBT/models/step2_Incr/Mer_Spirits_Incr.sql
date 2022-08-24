
      
  
  if object_id ('"stg"."Mer_Spirits_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Spirits_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Spirits_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Spirits_Incr"
    end


   EXEC('create view stg.Mer_Spirits_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([No_], [No_2], [Description], [Description_2], [Base_Unit_Of_Measure], [Item_Category_Code], Cast([Unit_Price] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Spirits_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_Spirits_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Spirits_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Spirits_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Spirits_Incr_temp_view"
    end



  