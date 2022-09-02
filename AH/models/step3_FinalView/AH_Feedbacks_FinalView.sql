{{ config(materialized='view',schema='stg')}}
Select
	[ID],[SEndingUserID],[ReceivINgUserID],[Rating],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Comment],[LastUpdatedUser],[ListingOwnerUserName] 
From stg.[AH_Feedbacks_Incr] 
Where [dbt_valid_to] is null