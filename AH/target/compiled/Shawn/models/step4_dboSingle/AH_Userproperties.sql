
Select
	cast([ID] as int) [Id],
	cast([IntnativeValue] as int) [IntNativeValue],
	cast([UserID] as int) [UserId],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([BoolnativeValue] as bit) [BoolNativeValue],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimeNativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringNativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumNativeValue],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalNativeValue] 
From stg.[AH_Userproperties_FinalView]