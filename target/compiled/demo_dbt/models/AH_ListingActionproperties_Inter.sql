
Select
	Id ID,
	IntNativeValue IntnativeValue,
	ListingActionId ListingActionID,
	CustomFieldId CustomFieldID,
	BoolNativeValue BoolnativeValue,
	DateTimeNativeValue DateTimenativeValue,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DecimalNativeValue DecimalnativeValue,
	cast(StringNativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumNativeValue as nvarchar(4000)) EnumnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_ListingActionproperties_Raw