{{ config(materialized='view',schema='stg')}}
Select
	[MediaCredentialID],[MediaAuctionID],[CredentialNumber],[Created],[UpdateEventID] 
From stg.[Auct_MediaCredential_Incr] 
Where [dbt_valid_to] is null