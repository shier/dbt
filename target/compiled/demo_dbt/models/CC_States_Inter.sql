
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	CountryId CountryID,
	IsActive IsActive,
	cast(StateCode as nvarchar(4000)) StateCode,
	cast(Name as nvarchar(4000)) Name,
	cast(CountryCode as nvarchar(4000)) CountryCode,
	cast(StateNameSlug as nvarchar(4000)) StateNameslug
From CC_States_Raw