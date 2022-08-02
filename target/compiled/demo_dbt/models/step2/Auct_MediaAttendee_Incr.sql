
With hashData as (
		Select
			HASHBYTES('MD5', concat(CredentialNumber, CoverageStarts, MediaAttendeeGUID, Name, Title, StoryDescription, EmailAddress, Cast(Created as varchar), Cast(ModifiedDate as varchar), Cast(MediaOrganizationID as varchar), Cast(Import as varchar), Cast(MediaAttendeeStatusID as varchar), Cast(ModifiedByUserID as varchar), Cast(Active as varchar), Cast(ParkingPassissued as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaAttendee_Inter]
	)
Select * From hashData
