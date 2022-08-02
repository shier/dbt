create view "stg"."Auct_Event_CredentialGroup_FinalView__dbt_tmp" as
    
Select
	[CredentialGroupID],[Active],[IsDefault],[ExternalEventID],[AuctionID] 
From stg.[Auct_Event_CredentialGroup_Incr] 
Where [dbt_valid_to] is null
