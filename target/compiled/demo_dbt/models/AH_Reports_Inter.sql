
Select
	SecondsToGenerate SecondstogeneRate,
	cast(ReportName as nvarchar(4000)) ReportName,
	cast(Data as nvarchar(4000)) Data,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	UserId UserID
From AH_Reports_Raw