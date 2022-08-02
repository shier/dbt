
Select
	PROPERTYTYPEID PropertyTypeID,
	KEY Key,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name
From Auct_PropertyType_Raw