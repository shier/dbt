{{ config(materialized='view',schema='stg')}}
Select
	[CredentialGroupID],[Active],[IsDefault],[ExternalEventID],[AuctionID] 
From stg.[Auct_Event_CredentialGroup_Incr] 
Where [dbt_valid_to] is null