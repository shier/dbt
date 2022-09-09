{{ config(materialized='view',schema='stg')}}
Select
	[ID],[SEnderID],[RecipientID],[MasTerMessageID],[ListingID],[Sent],[CreatedOn],[UpdatedOn],[DeletedOn],[SuBJect],[Body],[SEnderStatus],[RecipientStatus],[LastUpdatedUser] 
From stg.[AH_UserMessages_Incr] 
Where [dbt_valid_to] is null