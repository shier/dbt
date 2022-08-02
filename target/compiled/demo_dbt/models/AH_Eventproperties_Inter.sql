
Select
	DecimalNativeValue DecimalnativeValue,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(StringNativeValue as nvarchar(4000)) StringnativeValue,
	cast(EnumNativeValue as nvarchar(4000)) EnumnativeValue,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateTimeNativeValue DateTimenativeValue,
	BoolNativeValue BoolnativeValue,
	Id ID,
	IntNativeValue IntnativeValue,
	AuctionEventId AuctionEventID,
	CustomFieldId CustomFieldID
From AH_Eventproperties_Raw