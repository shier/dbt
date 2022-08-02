
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