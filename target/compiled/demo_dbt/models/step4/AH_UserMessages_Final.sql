
Select
	[ID],[ListingID],[SEnderID],[RecipientID],[MasTerMessageID],[DeletedOn],[Sent],[CreatedOn],[UpdatedOn],[SEnderStatus],[RecipientStatus],[LastUpdatedUser],[SuBJect],[Body] 
From stg.[AH_UserMessages_Incr] 
Where [dbt_valid_to] is null