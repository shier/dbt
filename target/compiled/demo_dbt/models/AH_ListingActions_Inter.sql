
Select
	cast(Description as nvarchar(4000)) Description,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Reason as nvarchar(4000)) Reason,
	cast(Status as nvarchar(4000)) Status,
	Amount Amount,
	ProxyAmount ProxyAmount,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	ActionDTTM Actiondttm,
	UserEntered Userentered,
	Id ID,
	UserId UserID,
	ListingId ListingID,
	Quantity Quantity
From AH_ListingActions_Raw