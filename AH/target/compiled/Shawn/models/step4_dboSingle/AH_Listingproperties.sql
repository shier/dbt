
Select
	cast([DecimalnativeValue] as decimal(29,14)) [DecimalNativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(200)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXListingProperties],
	cast([CreatedOn] as datetime) [Created_RWXListingProperties],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXListingProperties],
	cast([DeletedOn] as datetime) [DeletedDate_RWXListingProperties],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([BoolnativeValue] as bit) [HasBoolNativeValue],
	cast([ID] as int) [ID],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([ListingID] as int) [ListingID],
	cast([CustomFieldID] as int) [CustomFieldID] 
From stg.[AH_Listingproperties_FinalView]