
Select
	[CredentialGroupID],[ExternalEventID],[AuctionID],[Active],[IsDefault] 
From stg.[Auct_CredentialGroup_Incr] 
Where [dbt_valid_to] is null