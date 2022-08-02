
  
  if object_id ('"stg"."Auct_MediaAttendee_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAttendee_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaAttendee_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MediaAttendee_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MediaAttendee_Inter__dbt_tmp_temp_view as
    
Select
	cast(CREDENTIALNUMBER as nvarchar(4000)) CredentialNumber,
	cast(COVERAGESTARTS as nvarchar(4000)) CoverageStarts,
	cast(MEDIAATTENDEEGUID as nvarchar(4000)) MediaAttendeeGUID,
	cast(NAME as nvarchar(4000)) Name,
	cast(TITLE as nvarchar(4000)) Title,
	cast(STORYDESCRIPTION as nvarchar(4000)) StoryDescription,
	cast(EMAILADDRESS as nvarchar(4000)) EmailAddress,
	CREATED Created,
	MODIFIEDDATE ModifiedDate,
	MEDIAATTENDEEID MediaAttendeeID,
	MEDIAORGANIZATIONID MediaOrganizationID,
	IMPORT Import,
	MEDIAATTENDEESTATUSID MediaAttendeeStatusID,
	MODIFIEDBYUSERID ModifiedByUserID,
	ACTIVE Active,
	PARKINGPASSISSUED ParkingPassissued
From Auct_MediaAttendee_Raw
    ');

  CREATE TABLE "stg"."Auct_MediaAttendee_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaAttendee_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaAttendee_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAttendee_Inter__dbt_tmp_temp_view"
    end


