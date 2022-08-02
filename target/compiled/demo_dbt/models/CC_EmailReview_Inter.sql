
Select
	IsActive IsActive,
	Source Source,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	cast(SentFrom as nvarchar(4000)) SentFrom,
	cast(ReplyTo as nvarchar(4000)) Replyto,
	cast(IpAddress as nvarchar(4000)) IpAddress,
	cast(Template as nvarchar(4000)) Template,
	cast(ContentFields as nvarchar(4000)) ContentFields,
	cast(Meta as nvarchar(4000)) Meta,
	cast(ReviewedBy as nvarchar(4000)) ReviewedBy,
	cast(ReviewerAction as nvarchar(4000)) ReviewerAction,
	cast(ReviewReason as nvarchar(4000)) ReviewReason,
	cast(ReviewInformation as nvarchar(4000)) ReviewInFormation
From CC_EmailReview_Raw