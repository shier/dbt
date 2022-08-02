{{ config(materialized='table',schema='dbo')}}
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