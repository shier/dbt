
      
  
  if object_id ('"stg"."Auct_GLInfo_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_GLInfo_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_GLInfo_Incr"','U') is not null
    begin
    drop table "stg"."Auct_GLInfo_Incr"
    end


   EXEC('create view stg.Auct_GLInfo_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, Tasks, Category, Deptxx, Cast(Created as varchar), Cast(AccountID as varchar), Cast(Task_ItemType as varchar), Cast(GlCategoryID as varchar), Cast(FeeTypeID as varchar), Cast(Dept as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_GLInfo_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_GLInfo_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_GLInfo_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_GLInfo_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_GLInfo_Incr_temp_view"
    end



  