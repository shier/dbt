create view "stg"."AH_Feedbacks_FinalView__dbt_tmp" as
    
Select
	[ID],[SEndingUserID],[ReceivINgUserID],[Rating],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Comment],[LastUpdatedUser],[ListingOwnerUserName] 
From stg.[AH_Feedbacks_Incr] 
Where [dbt_valid_to] is null
