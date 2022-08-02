
Select
	DecimalNativeValue DecimalnativeValue,
	cast(StringNativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumNativeValue as nvarchar(4000)) EnumnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Scope as nvarchar(4000)) Scope,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateTimeNativeValue DateTimenativeValue,
	BoolNativeValue BoolnativeValue,
	CustomFieldId CustomFieldID,
	ListingTypeId ListingTypeID,
	Id ID,
	IntNativeValue IntnativeValue
From AH_ListingTypeproperties_Raw