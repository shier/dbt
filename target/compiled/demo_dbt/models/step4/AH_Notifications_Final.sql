
Select
	[ID],[DetailID],[UpdatedOn],[DeletedOn],[Queueddttm],[Statusdttm],[CreatedOn],[StatusMessage],[Message],[DetailType],[ReplytoEmail],[RecipientEmail],[CcEmail],[BCcEmail],[SEnderUserName],[ReceiverUserName],[Template],[LastUpdatedUser],[Status] 
From stg.[AH_Notifications_Incr] 
Where [dbt_valid_to] is null