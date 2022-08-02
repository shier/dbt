
Select
	Id ID,
	UserId UserID,
	ListingId ListingID,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	cast(UserName as nvarchar(4000)) UserName,
	cast(Question as nvarchar(4000)) Question,
	cast(Answer as nvarchar(4000)) Answer
From AH_ListingQuestions_Raw