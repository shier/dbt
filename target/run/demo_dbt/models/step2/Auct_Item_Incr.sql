
      
  
  if object_id ('"stg"."Auct_Item_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Item_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Item_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Item_Incr"
    end


   EXEC('create view stg.Auct_Item_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ItemTypeID as varchar), Cast(ItemStatusID as varchar), Cast(ContactID as varchar), Cast(UpdateEventID as varchar), Cast(ItemTaxTypeID as varchar), Cast(Created as varchar), Cast(EstimatedValue as varchar), Descr)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Item_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Item_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Item_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Item_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Item_Incr_temp_view"
    end



  