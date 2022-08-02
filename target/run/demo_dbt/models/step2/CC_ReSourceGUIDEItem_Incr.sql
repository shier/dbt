
      
  
  if object_id ('"stg"."CC_ReSourceGUIDEItem_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDEItem_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ReSourceGUIDEItem_Incr"','U') is not null
    begin
    drop table "stg"."CC_ReSourceGUIDEItem_Incr"
    end


   EXEC('create view stg.CC_ReSourceGUIDEItem_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(ReSourceGUIDEID as varchar), Cast(SequenceGroup as varchar), LogoURL, Title, Pagecontent, LinkText, LinkURL, CalltoActionText, CalltoActionURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReSourceGUIDEItem_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ReSourceGUIDEItem_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ReSourceGUIDEItem_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ReSourceGUIDEItem_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReSourceGUIDEItem_Incr_temp_view"
    end



  