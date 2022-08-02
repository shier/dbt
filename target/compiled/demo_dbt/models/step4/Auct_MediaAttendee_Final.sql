
Select
	[MediaAttendeeID],[CredentialNumber],[CoverageStarts],[MediaAttendeeGUID],[Name],[Title],[StoryDescription],[EmailAddress],[Created],[ModifiedDate],[MediaOrganizationID],[Import],[MediaAttendeeStatusID],[ModifiedByUserID],[Active],[ParkingPassissued] 
From stg.[Auct_MediaAttendee_Incr] 
Where [dbt_valid_to] is null