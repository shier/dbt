
Select
	cast(DATACLASS as nvarchar(4000)) DataClass,
	cast(NAME as nvarchar(4000)) Name,
	cast(DISPLAYNAME as nvarchar(4000)) DisplayName,
	DYNAMICPROPERTYID DynamicPropertyID
From Auct_DynamicProperty_Raw