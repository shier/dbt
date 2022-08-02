
Select
	IntNativeValue IntnativeValue,
	CustomFieldId CustomFieldID,
	Id ID,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateTimeNativeValue DateTimenativeValue,
	CreatedOn Createdon,
	cast(StringNativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumNativeValue as nvarchar(4000)) EnumnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	DecimalNativeValue DecimalnativeValue,
	BoolNativeValue BoolnativeValue
From AH_Siteproperties_Raw