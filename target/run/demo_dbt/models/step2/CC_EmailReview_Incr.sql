
      
  
  if object_id ('"stg"."CC_EmailReview_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailReview_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_EmailReview_Incr"','U') is not null
    begin
    drop table "stg"."CC_EmailReview_Incr"
    end


   EXEC('create view stg.CC_EmailReview_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(IsActive as varchar), Cast(Source as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), SentFrom, Replyto, IpAddress, Template, ContentFields, Meta, ReviewedBy, ReviewerAction, ReviewReason, ReviewInFormation)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_EmailReview_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_EmailReview_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_EmailReview_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_EmailReview_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailReview_Incr_temp_view"
    end



  