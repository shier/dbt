
Select
	BoolNativeValue BoolnativeValue,
	DecimalNativeValue DecimalnativeValue,
	CustomFieldId CustomFieldID,
	Id ID,
	IntNativeValue IntnativeValue,
	UserId UserID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateTimeNativeValue DateTimenativeValue,
	cast(StringNativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumNativeValue as nvarchar(4000)) EnumnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_Userproperties_Raw