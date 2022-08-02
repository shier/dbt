create view "stg"."Auct_MediaAttendee_FinalView__dbt_tmp" as
    
Select
	[MediaAttendeeID],[Active],[ParkingPassissued],[MediaOrganizationID],[Name],[Title],[StoryDescription],[EmailAddress],[CredentialNumber],[CoverageStarts],[Import],[MediaAttendeeStatusID],[MediaAttendeeGUID],[Created],[ModifiedDate],[ModifiedByUserID] 
From stg.[Auct_MediaAttendee_Incr] 
Where [dbt_valid_to] is null
