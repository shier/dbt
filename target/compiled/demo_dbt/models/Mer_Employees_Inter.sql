
Select
	CreatedDate CreatedDate,
	UpdatedDate Updateddate,
	RemovedDate RemovedDate,
	cast(Id as nvarchar(4000)) ID,
	cast(MerchantId as nvarchar(4000)) MerchantID,
	cast(Name as nvarchar(4000)) Name,
	cast(NickName as nvarchar(4000)) NickName,
	cast(Email as nvarchar(4000)) Email,
	cast(Pin as nvarchar(4000)) Pin,
	cast(Role as nvarchar(4000)) Role
From Mer_Employees_Raw