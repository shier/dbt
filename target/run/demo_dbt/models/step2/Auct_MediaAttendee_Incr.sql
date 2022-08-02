
      
  
  if object_id ('"stg"."Auct_MediaAttendee_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAttendee_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaAttendee_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MediaAttendee_Incr"
    end


   EXEC('create view stg.Auct_MediaAttendee_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(CredentialNumber, CoverageStarts, MediaAttendeeGUID, Name, Title, StoryDescription, EmailAddress, Cast(Created as varchar), Cast(ModifiedDate as varchar), Cast(MediaOrganizationID as varchar), Cast(Import as varchar), Cast(MediaAttendeeStatusID as varchar), Cast(ModifiedByUserID as varchar), Cast(Active as varchar), Cast(ParkingPassissued as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaAttendee_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MediaAttendee_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaAttendee_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaAttendee_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAttendee_Incr_temp_view"
    end



  