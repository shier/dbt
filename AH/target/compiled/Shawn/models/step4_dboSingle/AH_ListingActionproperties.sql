
Select
	cast([BoolnativeValue] as bit) [BoolnativeValue],
	cast([DecimalnativeValue] as numeric(19,4)) [DecimalnativeValue],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([ID] as int) [ID],
	cast([IntnativeValue] as int) [IntnativeValue],
	cast([ListingActionID] as int) [ListingActionID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DateTimenativeValue] as datetime) [DateTimenativeValue],
	cast([StringnativeValue] as nvarchar(4000)) [StringnativeValue],
	cast([EnumnativeValue] as nvarchar(4000)) [EnumnativeValue],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_ListingActionproperties_FinalView]