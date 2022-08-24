
  
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
	cast([MediaAttendeeID] as int) [MediaAttendeeID],
	cast([Active] as bit) [Active],
	cast([ParkingPassissued] as bit) [ParkingPassissued],
	cast([MediaOrganizationID] as int) [MediaOrganizationID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Title] as nvarchar(4000)) [Title],
	cast([StoryDescription] as nvarchar(4000)) [StoryDescription],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([CredentialNumber] as nvarchar(4000)) [CredentialNumber],
	cast([CoverageStarts] as nvarchar(4000)) [CoverageStarts],
	cast([Import] as int) [ImPort],
	cast([MediaAttendeeStatusID] as int) [MediaAttendeeStatusID],
	cast([MediaAttendeeGUID] as nvarchar(4000)) [MediaAttendeeGUID],
	cast([Created] as datetime) [Created],
	cast([ModifiedDate] as datetime) [ModifiedDate],
	cast([ModifiedByUserID] as int) [ModifiedByUserID] 
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


