
      
  
  if object_id ('"stg"."Auct_PropertyTransaction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PropertyTransaction_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PropertyTransaction_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PropertyTransaction_Incr"
    end


   EXEC('create view stg.Auct_PropertyTransaction_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(RecipientName, Description, PropertySpace, ChangedFields, Cast(PropertyID as varchar), Cast(PropertyStatusID as varchar), Cast(UserID as varchar), Cast(PropertyTypeKey as varchar), Cast(ConsignmentID as varchar), Cast(TransactionTime as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PropertyTransaction_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PropertyTransaction_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PropertyTransaction_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PropertyTransaction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PropertyTransaction_Incr_temp_view"
    end



  