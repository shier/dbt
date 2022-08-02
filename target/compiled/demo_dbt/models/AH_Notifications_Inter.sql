
Select
	Id ID,
	DetailID DetailID,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	QueuedDTTM Queueddttm,
	StatusDTTM Statusdttm,
	CreatedOn Createdon,
	cast(StatusMessage as nvarchar(4000)) StatusMessage,
	cast(Message as nvarchar(4000)) Message,
	cast(DetailType as nvarchar(4000)) DetailType,
	cast(ReplyToEmail as nvarchar(4000)) ReplytoEmail,
	cast(RecipientEmail as nvarchar(4000)) RecipientEmail,
	cast(CCEmail as nvarchar(4000)) CcEmail,
	cast(BCCEmail as nvarchar(4000)) BCcEmail,
	cast(SenderUserName as nvarchar(4000)) SEnderUserName,
	cast(ReceiverUserName as nvarchar(4000)) ReceiverUserName,
	cast(Template as nvarchar(4000)) Template,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Status as nvarchar(4000)) Status
From AH_Notifications_Raw