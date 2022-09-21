
  
  if object_id ('"dbo"."Auct_MediaAttendee__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaAttendee__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaAttendee__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaAttendee__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaAttendee__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([ParkingPassissued] as bit) [PARKINGPASSISSUED],
	cast([MediaAttendeeID] as int) [MEDIAATTENDEEID],
	cast([MediaOrganizationID] as int) [MEDIAORGANIZATIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Title] as nvarchar(4000)) [TITLE],
	cast([StoryDescription] as nvarchar(4000)) [STORYDESCRIPTION],
	cast([EmailAddress] as nvarchar(4000)) [EMAILADDRESS],
	cast([CredentialNumber] as nvarchar(4000)) [CREDENTIALNUMBER],
	cast([CoverageStarts] as nvarchar(4000)) [COVERAGESTARTS],
	cast([Import] as int) [IMPORT],
	cast([MediaAttendeeStatusID] as int) [MEDIAATTENDEESTATUSID],
	cast([MediaAttendeeGUID] as nvarchar(4000)) [MEDIAATTENDEEGUID],
	cast([Created] as datetime) [CREATED],
	cast([ModifiedDate] as datetime) [MODIFIEDDATE],
	cast([ModifiedByUserID] as int) [MODIFIEDBYUSERID] 
From stg.[Auct_MediaAttendee_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaAttendee__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaAttendee__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaAttendee__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaAttendee__dbt_tmp_temp_view"
    end


