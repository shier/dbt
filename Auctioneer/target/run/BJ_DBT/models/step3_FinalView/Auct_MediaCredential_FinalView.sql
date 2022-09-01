create view "stg"."Auct_MediaCredential_FinalView__dbt_tmp" as
    
Select
	[MediaCredentialID],[MediaAuctionID],[CredentialNumber],[Created],[UpdateEventID] 
From stg.[Auct_MediaCredential_Incr] 
Where [dbt_valid_to] is null
