{{ config(materialized='table',schema='dbo')}}
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