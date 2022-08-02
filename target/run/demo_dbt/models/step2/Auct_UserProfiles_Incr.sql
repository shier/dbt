
      
  
  if object_id ('"stg"."Auct_UserProfiles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserProfiles_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UserProfiles_Incr"','U') is not null
    begin
    drop table "stg"."Auct_UserProfiles_Incr"
    end


   EXEC('create view stg.Auct_UserProfiles_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(UserID as varchar), Cast(CurrentTaskCount as varchar), Cast(Taskinterval as varchar), Cast(PulseQueueID as varchar), Cast(AuctionID as varchar), Cast(SearchForID as varchar), Cast(SearchByID as varchar), Cast(DefaultConsignmentType as varchar), Cast(Taskplaysound as varchar), Cast(TaskautoUpdate as varchar), Cast(Taskautoopen as varchar), SearchCustomerText, SearchConsignmentText, Signature, UserName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserProfiles_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_UserProfiles_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UserProfiles_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_UserProfiles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserProfiles_Incr_temp_view"
    end



  