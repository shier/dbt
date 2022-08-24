{{ config(materialized='view',schema='stg')}}
Select
	[MEDIAATTENDEEID] [MediaAttendeeID],
	[ACTIVE] [Active],
	[PARKINGPASSISSUED] [ParkingPassissued],
	[MEDIAORGANIZATIONID] [MediaOrganizationID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([TITLE] as nvarchar(4000)) [Title],
	cast([STORYDESCRIPTION] as nvarchar(4000)) [StoryDescription],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	cast([CREDENTIALNUMBER] as nvarchar(4000)) [CredentialNumber],
	cast([COVERAGESTARTS] as nvarchar(4000)) [CoverageStarts],
	[IMPORT] [Import],
	[MEDIAATTENDEESTATUSID] [MediaAttendeeStatusID],
	cast([MEDIAATTENDEEGUID] as nvarchar(4000)) [MediaAttendeeGUID],
	[CREATED] [Created],
	[MODIFIEDDATE] [ModifiedDate],
	[MODIFIEDBYUSERID] [ModifiedByUserID]
From stg.[Auct_MediaAttendee_Raw]
