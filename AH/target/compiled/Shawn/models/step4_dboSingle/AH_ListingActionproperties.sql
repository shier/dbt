
Select
	cast([BoolnativeValue] as bit) [BoolNativeValue],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalNativeValue],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([ID] as int) [Id],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([ListingActionID] as int) [ListingActionId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_ListingActionproperties_FinalView]