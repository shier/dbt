create view "stg"."AH_Notifications_FinalView__dbt_tmp" as
    
Select
	[ID],[DetailID],[CreatedOn],[UpdatedOn],[DeletedOn],[Queueddttm],[Statusdttm],[RecipientEmail],[CcEmail],[BCcEmail],[LastUpdatedUser],[Status],[StatusMessage],[Message],[DetailType],[ReplytoEmail],[SEnderUserName],[ReceiverUserName],[Template] 
From stg.[AH_Notifications_Incr] 
Where [dbt_valid_to] is null
