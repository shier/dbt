
Select
	Id ID,
	UserId UserID,
	AccessFailedCount AccessfailedCount,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	LockoutEnd LockOutEnd,
	IsActive IsActive,
	cast(Password as nvarchar(4000)) Password
From CC_LoginPassword_Raw