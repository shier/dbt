
Select
	cast(ReceiverEmail as nvarchar(4000)) ReceiverEmail,
	cast(Message as nvarchar(4000)) Message,
	cast(IpAddress as nvarchar(4000)) IpAddress,
	cast(Browser as nvarchar(4000)) Browser,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	cast(SenderName as nvarchar(4000)) SEnderName,
	cast(SenderEmail as nvarchar(4000)) SEnderEmail,
	cast(ReceiverName as nvarchar(4000)) ReceiverName,
	EmailFilterCodeId EmailFilterCodeID,
	Id ID,
	ListingId ListingID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	IsActive IsActive,
	SenderWantsCopy SEnderwantsCopy,
	WantsNewsletter WantsNewsLetter,
	WantsRrcInfo WantsrrcInfo,
	EmailProcessed EmailProcessed,
	CopyProcessed CopyProcessed
From CC_SEndtofriend_Raw