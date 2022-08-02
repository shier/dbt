
Select
	Id ID,
	PropertyBagId PropertybagID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(Name as nvarchar(4000)) Name,
	cast(Value as nvarchar(4000)) Value
From AH_PropertybagItems_Raw